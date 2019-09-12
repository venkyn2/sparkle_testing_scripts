
for i in 1 2 3 4 5 6 7 8

do

ssh -i ~/my.key mdc-ch$i-cust4 "sudo rm -rf /data/volume/datanode"
ssh -i ~/my.key mdc-ch$i-cust4 "sudo rm -rf /data/volume/namenode"
ssh -i ~/my.key mdc-ch$i-cust4 "sudo mkdir /data/volume/datanode"
ssh -i ~/my.key mdc-ch$i-cust4 "sudo mkdir /data/volume/namenode"
ssh -i ~/my.key mdc-ch$i-cust4 "sudo chmod -R 777 /data/"

done


