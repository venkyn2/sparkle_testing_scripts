#!/bin/bash
echo "start master...."
./multicore/master/sbin/start-master.sh

sleep 10s 

echo "start worker0...."
./multicore/worker0/sbin/start-slave.sh spark://mdc-ch1-cust4:7077

echo "start worker1...."
./multicore/worker1/sbin/start-slave.sh spark://mdc-ch1-cust4:7077



