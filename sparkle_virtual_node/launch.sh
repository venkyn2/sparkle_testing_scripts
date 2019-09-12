sudo ./start-one.sh

for i in 1 2 3 4

do


scp -i ~/my.key  start-one-sdsm.sh mdc-ch$i-cust4:/tmp/ ; 
scp -i ~/my.key  /usr/local/spark/conf/spark-defaults.conf mdc-ch$i-cust4:/tmp/

ssh -i ~/my.key mdc-ch$i-cust4 "sudo mv /tmp/start-one-sdsm.sh /var/tmp/spark2.0hpcplatform/"
ssh -i ~/my.key mdc-ch$i-cust4 "sudo mv /tmp/spark-defaults.conf /usr/local/spark/conf/spark-defaults.conf"
ssh -i ~/my.key mdc-ch$i-cust4 << EOF
	 sudo sh;
	 cd /var/tmp/spark2.0hpcplatform
	./create_filesystems.sh
	./start-one-sdsm.sh
EOF

done


