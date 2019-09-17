HADOOP_USER=nnnnnven
HDFS_USER=nnnnnven
SLEEP_BETWEEN_RUNS=60

## Spark Parametars
# Driver Memory
SPARK_DRIVER_MEMORY=60g

# Executor Memory
SPARK_EXECUTOR_MEMORY=5g

# DEPLOY_MODE one of 'cluster' or 'client'
SPARK_DEPLOY_MODE="client"

# Master URL for the cluster. 'spark://localhost:7077', 'yarn-client' or 'yarn-cluster'
SPARK_MASTER_URL="spark://mdc-ch1-cust4:7077"

# spark-terasort jar name
SPARK_TERASORT_JAR="spark-terasort-1.1-SNAPSHOT-jar-with-dependencies.jar"

# Class Name
TERAGEN_CLASS_NAME="com.github.ehiggs.spark.terasort.TeraGen"
TERASORT_CLASS_NAME="com.github.ehiggs.spark.terasort.TeraSort"
TERAVAL_CLASS_NAME="com.github.ehiggs.spark.terasort.TeraValidate"
