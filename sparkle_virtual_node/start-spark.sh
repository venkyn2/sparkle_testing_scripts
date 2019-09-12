#!/bin/bash
echo "start master...."
./multicore/master/sbin/start-master.sh

sleep 10s 

count=0
worker_number=5
export SPARK_WORKER_INSTANCES=1
#export SPARK_IDENT_STRING=worker$count
export SPARK_WORKER_WEBUI_PORT=8081


while [ $count -le $worker_number ]
do
	echo "start worker{{$count}}...."

	./multicore/worker$count/sbin/start-slave.sh spark://mdc-ch1-cust4:7077 -h mdc-ch1-cust4
	let count=count+1
	((SPARK_WORKER_WEBUI_PORT++))
	((SPARK_WORKER_INSTANCES++))

	sleep 1s 
done



exit

{% for i in range(0, 8) %}
echo "start worker{{i}}...."
export SPARK_IDENT_STRING=worker{{i}}
./multicore/worker{{i}}/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

{% endfor %}

exit

echo "start worker0...."
./multicore/worker0/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker1...."
./multicore/worker1/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker2...."
./multicore/worker2/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker3...."
./multicore/worker3/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker4...."
./multicore/worker4/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker5...."
./multicore/worker5/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker6...."
./multicore/worker6/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker7...."
./multicore/worker7/sbin/start-slave.sh spark://mdc-ch1-cust4:7077


