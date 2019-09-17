SIZE=3000G
HADOOP_USER="nnnnnven"
HDFS_DIR=/user/"$HADOOP_USER$SIZE"
SPARK_MASTER_URL=spark://mdc-ch1-cust4:7077
SPARK_DRIVER_MEMORY=200g
SPARK_EXECUTOR_CORE=4
SPARK_EXECUTOR_MEMORY=8g
SPARK_NUM_EXECUTOR=5
SPARK_MAX_CORE=400
SPARK_DEFAULT_PARALLEL=25
SPARK_TERASORT_JAR=./target/spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar
hssize=$SIZE
WORKERS=8
LOGFILE=HS_$0_DS_$hssize"_EC_"${SPARK_EXECUTOR_CORE}"_EM_"${SPARK_EXECUTOR_MEMORY}"_NE_"${SPARK_NUM_EXECUTOR}"_MC_"${SPARK_MAX_CORE}"_NW_"${WORKERS}"_P_"$SPARK_DEFAULT_PARALLEL.log

hdfs dfs -mkdir ${HDFS_DIR}
hdfs dfs -chown $HADOOP_USER $HDFS_DIR
hadoop fs -expunge
globalheap-util format /dev/shm/nvm/global0


#sleep  60

mkdir -p ./logs
echo $SPARK_MASTER_URL
echo "Starting TeraSort"

echo $LOGFILE

start=`date +%s`

$SPARK_HOME/bin/spark-submit --class  com.github.ehiggs.spark.terasort.TeraSort --master $SPARK_MASTER_URL --num-executors=$SPARK_NUM_EXECUTOR --conf "spark.cores.max=$SPARK_MAX_CORE" --conf spark.default.parallelism=$SPARK_DEFAULT_PARALLEL --conf spark.rpc.numRetries=5 --conf spark.yarn.executor.memoryOverhead=60000 --conf spark.network.timeout=2000000 --conf "spark.executor.extraJavaOptions=-XX:-UseBiasedLocking" --conf "spark.driver.extraJavaOptions=-XX:-UseBiasedLocking" --executor-memory=$SPARK_EXECUTOR_MEMORY --executor-cores=$SPARK_EXECUTOR_CORE   ${SPARK_TERASORT_JAR} $HDFS_DIR/HSsort-input  $HDFS_DIR/HSsort-output  &> $LOGFILE


end=`date +%s`
echo "to remove hadoop fs -rm -f -r -skipTrash /user/$HDFS_DIR/HSsort-output"

total_time=`expr ${end} - ${start}`
total_time_in_hour=$(echo "scale=4;${total_time}/3600" | bc)
scale_factor=$(echo "scale=4;${hssize}/10000000000" | bc)
perf_metric=$(echo "scale=4;${scale_factor}/${total_time_in_hour}" | bc)

echo -e "${green}$sep============${NC}"  &>> $LOGFILE
echo -e "${green}TPCx-HS Performance Metric (HSph@SA) Report ${NC}" &>> $LOGFILE
echo -e "${green}Start time $start End time $end ${NC}" &>> $LOGFILE
echo -e "${green}Test Run $i details: Total Time = $total_time ${NC}" &>> $LOGFILE
echo -e "${green}                     Total Size = $hssize ${NC}" &>> $LOGFILE
echo -e "${green}                     Scale-Factor = $scale_factor ${NC}" &>> $LOGFILE
echo -e "${green}TPCx-HS Performance Metric (HSph@SF): $perf_metric ${NC}" &>> $LOGFILE
echo -e "${green}$sep============${NC}" &>> $LOGFILE



