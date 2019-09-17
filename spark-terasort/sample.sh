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
WORKERS=40
LOGFILE=HS_$0_DS_$hssize"_EC_"${SPARK_EXECUTOR_CORE}"_EM_"${SPARK_EXECUTOR_MEMORY}"_NE_"${SPARK_NUM_EXECUTOR}"_MC_"${SPARK_MAX_CORE}"_NW_"${WORKERS}.log

echo $LOGFILE

start=`date +%s`
hdfs 
hdfs dfs -mkdir ${HDFS_DIR}
hdfs dfs -chown $HADOOP_USER $HDFS_DIR
hadoop fs -expunge

sleep  60

end=`date +%s`

echo " hello " &>  $LOGFILE 

total_time=`expr ${end} - ${start}`
total_time_in_hour=$(echo "scale=4;${total_time}/3600" | bc)
scale_factor=$(echo "scale=4;${hssize}/10000000000" | bc)
perf_metric=$(echo "scale=4;${scale_factor}/${total_time_in_hour}" | bc)

echo -e "${green}$sep============${NC}"  &>> $LOGFILE
echo -e "${green}TPCx-HS Performance Metric (HSph@SA) Report ${NC}" &>> $LOGFILE
echo "" | tee -a ./result-"$prefix".log
echo -e "${green}Test Run $i details: Total Time = $total_time ${NC}" &>> $LOGFILE
echo -e "${green}                     Total Size = $hssize ${NC}" &>> $LOGFILE
echo -e "${green}                     Scale-Factor = $scale_factor ${NC}" &>> $LOGFILE
echo -e "${green}TPCx-HS Performance Metric (HSph@SF): $perf_metric ${NC}" &>> $LOGFILE
echo -e "${green}$sep============${NC}" &>> $LOGFILE


exit

