for i in {0..50}
do
 sudo mkdir worker$i/conf
 sudo cp /usr/local/spark/conf/spark-env.sh worker$i/conf/
done
