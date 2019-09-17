SIZE=500G
HADOOP_USER="nnnnnven"
HDFS_DIR=/user/"$HADOOP_USER$SIZE"
SPARK_MASTER_URL=spark://mdc-ch1-cust4:7077
SPARK_DRIVER_MEMORY=100g
SPARK_EXECUTOR_CORE=2
SPARK_EXECUTOR_MEMORY=8g
SPARK_NUM_EXECUTOR=5
SPARK_MAX_CORE=400
SPARK_TERASORT_JAR=./target/spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar
hssize=$SIZE

hdfs 
hdfs dfs -mkdir ${HDFS_DIR}
hdfs dfs -chown $HADOOP_USER $HDFS_DIR
hadoop fs -expunge


#sleep  60

mkdir -p ./logs
echo $SPARK_MASTER_URL
echo "Starting Teragen"
#(time $SPARK_HOME/bin/spark-submit --class ${TERAGEN_CLASS_NAME} --deploy-mode ${SPARK_DEPLOY_MODE} --master ${SPARK_MASTER_URL} --conf "spark.driver.memory=${SPARK_DRIVER_MEMORY}" --conf "spark.executor.memory=${SPARK_EXECUTOR_MEMORY}" ${SPARK_TERASORT_JAR} ${hssize} /user/"${HADOOP_USER}"/"${HDFS_DIR}"/HSsort-input ) 2>&1 | (tee ./logs/HSgen-time-run${i}.txt)
#(time $SPARK_HOME/bin/spark-submit --class  com.github.ehiggs.spark.terasort.TeraSort --master ${SPARK_MASTER_URL} --conf "spark.driver.memory=${SPARK_DRIVER_MEMORY}" --conf "spark.executor.memory=${SPARK_EXECUTOR_MEMORY}" ${SPARK_TERASORT_JAR} ${hssize} /user/"${HADOOP_USER}"/"${HDFS_DIR}"/HSsort-input ) 2>&1 | (tee ./logs/HSgen-time-run${i}.txt)
$SPARK_HOME/bin/spark-submit --class  com.github.ehiggs.spark.terasort.TeraSort --master $SPARK_MASTER_URL --num-executors=$SPARK_NUM_EXECUTOR --conf "spark.cores.max=$SPARK_MAX_CORE" --conf spark.default.parallelism=6 --conf "spark.executor.extraJavaOptions=-XX:-UseBiasedLocking" --conf "spark.driver.extraJavaOptions=-XX:-UseBiasedLocking" --executor-memory=$SPARK_EXECUTOR_MEMORY --executor-cores=$SPARK_EXECUTOR_CORE   ${SPARK_TERASORT_JAR} $HDFS_DIR/HSsort-input $HDFS_DIR/HSsort-output  &> HSSort$hssize_EC_$SPARK_EXECUTOR_CORE_EM_$SPARK_EXECUTOR_MEMORY_NE_$SPARK_NUM_EXECUTOR_MC_$SPARK_MAX_CORE.log 

echo "to remove hadoop fs -rm -f -r -skipTrash /user/$HDFS_DIR/HSsort-output"
 
