/*
 * test_urcu_rbtree.c
 *
 * Userspace RCU library - test program for RB tree
 *
 * Copyright February 2010 - Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#define _GNU_SOURCE
#ifndef DYNAMIC_LINK_TEST
#define _LGPL_SOURCE
#else
#define debug_yield_read()
#endif
#include "rcu_config.h"
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <assert.h>
#include <sys/syscall.h>
#include <sched.h>
#include <errno.h>
#include <time.h>

//#include "arch.h"

extern int __thread disable_debug;

/* hardcoded number of CPUs */
#define NR_CPUS 16384

/* Default number of insert/delete */
#define DEFAULT_NR_RAND 6

/* Default number of global items (used by readers for lookups) */
#define DEFAULT_NR_GLOBAL	10

#if defined(_syscall0)
_syscall0(pid_t, gettid)
#elif defined(__NR_gettid)
static inline pid_t gettid(void)
{
	return syscall(__NR_gettid);
}
#else
#warning "use pid as tid"
static inline pid_t gettid(void)
{
	return getpid();
}
#endif

#include "urcu-bp.h"
#include "rcurbtree.h"
//#include "urcu-defer.h"

int tree_comp(void *a, void *b)
{
	if ((unsigned long)a < (unsigned long)b)
		return -1;
	else if ((unsigned long)a > (unsigned long)b)
		return 1;
	else
		return 0;
}

static DEFINE_RCU_RBTREE(rbtree, tree_comp, malloc, free, call_rcu);

static volatile int test_go, test_stop;

static unsigned long wdelay;

static unsigned long duration;

/* read-side C.S. duration, in loops */
static unsigned long rduration;

/* write-side C.S. duration, in loops */
static unsigned long wduration;

static unsigned long nr_rand_items = DEFAULT_NR_RAND;

static int opt_search_begin,
	opt_search_bottom,
	opt_search_end,
	opt_search_mid,
	opt_iter_min_max,
	opt_iter_max_min,
	opt_benchmark;

static inline void loop_sleep(unsigned long l)
{
	while (l-- != 0)
		caa_cpu_relax();
}

static int verbose_mode;

#define printf_verbose(fmt, args...)		\
	do {					\
		if (verbose_mode)		\
			printf(fmt, args);	\
	} while (0)

static unsigned int cpu_affinities[NR_CPUS];
static unsigned int next_aff = 0;
static int use_affinity = 0;

pthread_mutex_t affinity_mutex = PTHREAD_MUTEX_INITIALIZER;

static void set_affinity(void)
{
	cpu_set_t mask;
	int cpu;
	int ret;

	if (!use_affinity)
		return;

#if HAVE_SCHED_SETAFFINITY
	ret = pthread_mutex_lock(&affinity_mutex);
	if (ret) {
		perror("Error in pthread mutex lock");
		exit(-1);
	}
	cpu = cpu_affinities[next_aff++];
	ret = pthread_mutex_unlock(&affinity_mutex);
	if (ret) {
		perror("Error in pthread mutex unlock");
		exit(-1);
	}

	CPU_ZERO(&mask);
	CPU_SET(cpu, &mask);
#if SCHED_SETAFFINITY_ARGS == 2
	sched_setaffinity(0, &mask);
#else
	sched_setaffinity(0, sizeof(mask), &mask);
#endif
#endif /* HAVE_SCHED_SETAFFINITY */
}

/*
 * returns 0 if test should end.
 */
static int test_duration_write(void)
{
	return !test_stop;
}

static int test_duration_read(void)
{
	return !test_stop;
}

static unsigned long long __thread nr_writes;
static unsigned long long __thread nr_reads;

static unsigned int nr_readers;
static unsigned int nr_writers;

static unsigned long global_items = DEFAULT_NR_GLOBAL;
static void **global_key = NULL;

pthread_mutex_t rcu_copy_mutex = PTHREAD_MUTEX_INITIALIZER;

void rcu_copy_mutex_lock(void)
{
	int ret;
	ret = pthread_mutex_lock(&rcu_copy_mutex);
	if (ret) {
		perror("Error in pthread mutex lock");
		exit(-1);
	}
}

void rcu_copy_mutex_unlock(void)
{
	int ret;

	ret = pthread_mutex_unlock(&rcu_copy_mutex);
	if (ret) {
		perror("Error in pthread mutex unlock");
		exit(-1);
	}
}

static
void set_lookup_index(struct rcu_rbtree_node *node,
		char *lookup_hit)
{
	int i;

	for (i = 0; i < global_items; i++) {
		if (node->begin == global_key[i]
		    && !lookup_hit[i]) {
			lookup_hit[i] = 1;
			break;
		}
	}
}

void *thr_reader(void *_count)
{
	unsigned long long *count = _count;
	struct rcu_rbtree_node *node;
	int i, index;
	char *lookup_hit;

	printf_verbose("thread_begin %s, thread id : %lx, tid %lu\n",
			"reader", pthread_self(), (unsigned long)gettid());

	set_affinity();

	rcu_register_thread();

	lookup_hit = malloc(sizeof(*lookup_hit) * global_items);

	while (!test_go)
	{
	}
	cmm_smp_mb();

	for (;;) {
		/* search begin key */
		if (opt_search_begin) {
			for (i = 0; i < global_items; i++) {
				rcu_read_lock();
				node = rcu_rbtree_search_begin_key(&rbtree,
							 rcu_dereference(rbtree.root),
							 global_key[i]);
				assert(!rcu_rbtree_is_nil(&rbtree, node));
				rcu_read_unlock();
				nr_reads++;
			}
		}

		/* search bottom of range */
		if (opt_search_bottom) {
			for (i = 0; i < global_items; i++) {
				rcu_read_lock();
				node = rcu_rbtree_search(&rbtree,
							 rcu_dereference(rbtree.root),
							 global_key[i]);
				assert(!rcu_rbtree_is_nil(&rbtree, node));
				rcu_read_unlock();
				nr_reads++;
			}
		}

		/* search end of range */
		if (opt_search_end) {
			for (i = 0; i < global_items; i++) {
				rcu_read_lock();
				node = rcu_rbtree_search(&rbtree,
							 rcu_dereference(rbtree.root),
							 (void*) ((unsigned long) global_key[i] + 3));
				assert(!rcu_rbtree_is_nil(&rbtree, node));
				rcu_read_unlock();
				nr_reads++;
			}
		}

		/* search range (middle) */
		if (opt_search_mid) {
			for (i = 0; i < global_items; i++) {
				rcu_read_lock();
				node = rcu_rbtree_search_range(&rbtree,
							 rcu_dereference(rbtree.root),
							 (void*) ((unsigned long) global_key[i] + 1),
							 (void*) ((unsigned long) global_key[i] + 2));
				assert(!rcu_rbtree_is_nil(&rbtree, node));
				rcu_read_unlock();
				nr_reads++;
			}
		}

		/* min + next */
		if (opt_iter_min_max) {
			memset(lookup_hit, 0, sizeof(*lookup_hit) * global_items);

			rcu_read_lock();
			node = rcu_rbtree_min(&rbtree,
					      rcu_dereference(rbtree.root));
			while (!rcu_rbtree_is_nil(&rbtree, node)) {
				if (!opt_benchmark)
					set_lookup_index(node, lookup_hit);
				node = rcu_rbtree_next(&rbtree, node);
				nr_reads++;
			}
			rcu_read_unlock();

			if (!opt_benchmark) {
				for (i = 0; i < global_items; i++)
					assert(lookup_hit[i]);
			}
		}

		/* max + prev */
		if (opt_iter_max_min) {
			memset(lookup_hit, 0, sizeof(*lookup_hit) * global_items);

			rcu_read_lock();
			node = rcu_rbtree_max(&rbtree,
					      rcu_dereference(rbtree.root));
			while (!rcu_rbtree_is_nil(&rbtree, node)) {
				if (!opt_benchmark)
					set_lookup_index(node, lookup_hit);
				node = rcu_rbtree_prev(&rbtree, node);
				nr_reads++;
			}
			rcu_read_unlock();

			if (!opt_benchmark) {
				for (i = 0; i < global_items; i++)
					assert(lookup_hit[i]);
			}
		}

		debug_yield_read();
		if (unlikely(rduration))
			loop_sleep(rduration);
		if (unlikely(!test_duration_read()))
			break;
	}

	rcu_unregister_thread();

	/* test extra thread registration */
	rcu_register_thread();
	rcu_unregister_thread();

	free(lookup_hit);

	*count = nr_reads;
	printf_verbose("thread_end %s, thread id : %lx, tid %lu\n",
			"reader", pthread_self(), (unsigned long)gettid());
	return ((void*)1);

}

void *thr_writer(void *_count)
{
	unsigned long long *count = _count;
	struct rcu_rbtree_node *node;
	void **key;
	int i;

	printf_verbose("thread_begin %s, thread id : %lx, tid %lu\n",
			"writer", pthread_self(), (unsigned long)gettid());

	set_affinity();

	key = malloc(sizeof(*key) * nr_rand_items);
	assert(key);
	//disable_debug = 1;

	rcu_register_thread();

	while (!test_go)
	{
	}
	cmm_smp_mb();

	for (;;) {
		rcu_copy_mutex_lock();

		for (i = 0; i < nr_rand_items; i++) {
			//key[i] = (void *)(unsigned long)(rand() % 2048);
			key[i] = (void *)(unsigned long)(((unsigned long) rand() * 4) % 2048);
			//For more collisions
			//key[i] = (void *)(unsigned long)(rand() % 6);
			//node->begin = key[i];
			//node->end = (void *)((unsigned long) key[i] + 1);
			//node->end = (void *)((unsigned long) key[i] + 4);
			rcu_read_lock();
			rcu_rbtree_insert(&rbtree, key[i],
					  (void *)((unsigned long) key[i] + 4));
			rcu_read_unlock();
			nr_writes++;
		}
		rcu_copy_mutex_unlock();

		if (unlikely(wduration))
			loop_sleep(wduration);

		rcu_copy_mutex_lock();
		for (i = 0; i < nr_rand_items; i++) {
#if 0
			node = rcu_rbtree_min(rbtree, rbtree->root);
			while (!rcu_rbtree_is_nil(&rbtree, node)) {
				printf("{ 0x%lX p:%lX r:%lX l:%lX %s %s %s} ",
					(unsigned long)node->key,
					node->p->key,
					node->right->key,
					node->left->key,
					node->color ? "red" : "black",
					node->pos ? "right" : "left",
					node->nil ? "nil" : "");
				node = rcu_rbtree_next(rbtree, node);
			}
			printf("\n");
#endif
			rcu_read_lock();
			node = rcu_rbtree_search(&rbtree, rbtree.root, key[i]);
			assert(!rcu_rbtree_is_nil(&rbtree, node));
			rcu_rbtree_remove(&rbtree, node);
			rcu_read_unlock();
			nr_writes++;
		}

		rcu_copy_mutex_unlock();
		if (unlikely(!test_duration_write()))
			break;
		if (unlikely(wdelay))
			loop_sleep(wdelay);
	}

	rcu_unregister_thread();

	printf_verbose("thread_end %s, thread id : %lx, tid %lu\n",
			"writer", pthread_self(), (unsigned long)gettid());
	*count = nr_writes;
	free(key);
	return ((void*)2);
}

void show_usage(int argc, char **argv)
{
	printf("Usage : %s nr_readers nr_writers duration (s)", argv[0]);
#ifdef DEBUG_YIELD
	printf(" [-r] [-w] (yield reader and/or writer)");
#endif
	printf(" [-d delay] (writer period (us))");
	printf(" [-c duration] (reader C.S. duration (in loops))");
	printf(" [-e duration] (writer C.S. duration (in loops))");
	printf(" [-v] (verbose output)");
	printf(" [-a cpu#] [-a cpu#]... (affinity)");
	printf(" [-g items] Initially populate n items (for reader lookups)");
	printf(" [-f items] Writers add n random items and then remove these items");
	printf(" [-b] Reader: search begin key");
	printf(" [-n] Reader: search bottom of range");
	printf(" [-N] Reader: search end of range");
	printf(" [-m] Reader: search range (middle)");
	printf(" [-i] Reader: iterate from min to max");
	printf(" [-I] Reader: iterate from max to min");
	printf(" [-B] Benchmark mode (no validation)");
	printf("\n");
}

int main(int argc, char **argv)
{
	int err;
	pthread_t *tid_reader, *tid_writer;
	void *tret;
	unsigned long long *count_reader, *count_writer;
	unsigned long long tot_reads = 0, tot_writes = 0;
	int i, a;
	struct rcu_rbtree_node *node;

	if (argc < 4) {
		show_usage(argc, argv);
		return -1;
	}

	err = sscanf(argv[1], "%u", &nr_readers);
	if (err != 1) {
		show_usage(argc, argv);
		return -1;
	}

	err = sscanf(argv[2], "%u", &nr_writers);
	if (err != 1) {
		show_usage(argc, argv);
		return -1;
	}
	
	err = sscanf(argv[3], "%lu", &duration);
	if (err != 1) {
		show_usage(argc, argv);
		return -1;
	}

	for (i = 4; i < argc; i++) {
		if (argv[i][0] != '-')
			continue;
		switch (argv[i][1]) {
#ifdef DEBUG_YIELD
		case 'r':
			yield_active |= YIELD_READ;
			break;
		case 'w':
			yield_active |= YIELD_WRITE;
			break;
#endif
		case 'a':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			a = atoi(argv[++i]);
			cpu_affinities[next_aff++] = a;
			use_affinity = 1;
			printf_verbose("Adding CPU %d affinity\n", a);
			break;
		case 'c':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			rduration = atol(argv[++i]);
			break;
		case 'd':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			wdelay = atol(argv[++i]);
			break;
		case 'e':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			wduration = atol(argv[++i]);
			break;
		case 'v':
			verbose_mode = 1;
			break;
		case 'g':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			global_items = atol(argv[++i]);
			break;
		case 'b':
			opt_search_begin = 1;
			break;
		case 'n':
			opt_search_bottom = 1;
			break;
		case 'N':
			opt_search_end = 1;
			break;
		case 'm':
			opt_search_mid = 1;
			break;
		case 'i':
			opt_iter_min_max = 1;
			break;
		case 'I':
			opt_iter_max_min = 1;
			break;
		case 'B':
			opt_benchmark = 1;
			break;
		case 'f':
			if (argc < i + 2) {
				show_usage(argc, argv);
				return -1;
			}
			nr_rand_items = atol(argv[++i]);
			break;
		}
	}

	printf_verbose("running test for %lu seconds, %u readers, %u writers.\n",
		duration, nr_readers, nr_writers);
	printf_verbose("Writer delay : %lu loops.\n", wdelay);
	printf_verbose("Reader duration : %lu loops.\n", rduration);
	printf_verbose("thread %-6s, thread id : %lx, tid %lu\n",
			"main", pthread_self(), (unsigned long)gettid());

	tid_reader = malloc(sizeof(*tid_reader) * nr_readers);
	tid_writer = malloc(sizeof(*tid_writer) * nr_writers);
	count_reader = malloc(sizeof(*count_reader) * nr_readers);
	count_writer = malloc(sizeof(*count_writer) * nr_writers);
	global_key = malloc(sizeof(*global_key) * global_items);

	srand(time(NULL));

	err = create_all_cpu_call_rcu_data(0);
	assert(!err);

	next_aff = 0;

	for (i = 0; i < nr_readers; i++) {
		err = pthread_create(&tid_reader[i], NULL, thr_reader,
				     &count_reader[i]);
		if (err != 0)
			exit(1);
	}
	for (i = 0; i < nr_writers; i++) {
		err = pthread_create(&tid_writer[i], NULL, thr_writer,
				     &count_writer[i]);
		if (err != 0)
			exit(1);
	}

	rcu_register_thread();
	rcu_read_lock();
	/* Insert items looked up by readers */
	for (i = 0; i < global_items; i++) {
		global_key[i] = (void *)(unsigned long)(((unsigned long) rand() * 4) % 2048);
		//global_key[i] = (void *)(unsigned long)(rand() % 2048);
		//For more collisions
		//global_key[i] = (void *)(unsigned long)(rand() % 6);
		//node->begin = global_key[i];
		//node->end = (void *)((unsigned long) global_key[i] + 1);
		//node->end = (void *)((unsigned long) global_key[i] + 4);
		rcu_rbtree_insert(&rbtree, global_key[i],
				  (void *)((unsigned long) global_key[i] + 4));
	}
	rcu_read_unlock();

	cmm_smp_mb();

	test_go = 1;

	sleep(duration);

	test_stop = 1;

	for (i = 0; i < nr_readers; i++) {
		err = pthread_join(tid_reader[i], &tret);
		if (err != 0)
			exit(1);
		tot_reads += count_reader[i];
	}
	for (i = 0; i < nr_writers; i++) {
		err = pthread_join(tid_writer[i], &tret);
		if (err != 0)
			exit(1);
		tot_writes += count_writer[i];
	}
	
	rcu_read_lock();
	for (i = 0; i < global_items; i++) {
		node = rcu_rbtree_search(&rbtree, rbtree.root, global_key[i]);
		assert(!rcu_rbtree_is_nil(&rbtree, node));
		rcu_rbtree_remove(&rbtree, node);
	}
	rcu_read_unlock();
	rcu_unregister_thread();

	printf_verbose("total number of reads : %llu, writes %llu\n", tot_reads,
	       tot_writes);
	printf("SUMMARY %-25s testdur %4lu nr_readers %3u rdur %6lu wdur %6lu "
		"nr_writers %3u "
		"wdelay %6lu nr_reads %12llu nr_writes %12llu nr_ops %12llu "
		"global_items %6lu rand_items %6lu\n",
		argv[0], duration, nr_readers, rduration, wduration,
		nr_writers, wdelay, tot_reads, tot_writes,
		tot_reads + tot_writes, global_items, nr_rand_items);
	free_all_cpu_call_rcu_data();
	free(tid_reader);
	free(tid_writer);
	free(count_reader);
	free(count_writer);
	free(global_key);
	return 0;
}
