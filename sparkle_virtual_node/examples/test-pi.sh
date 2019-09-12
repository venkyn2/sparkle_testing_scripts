#!/bin/bash
# A script for running the "Calculate Pi" Spark example.
set -x
set -e

# WAS: sudo bash -x ./bin/run-example SparkPi

export SPARK_HOME=$( cd /var/tmp/spark2.0hpcplatform ; cat spark_2.0_dir.txt )
cd "$SPARK_HOME"

./bin/spark-submit \
  --class org.apache.spark.examples.JavaSparkPi \
  --master "spark://$(hostname):7077" \
  --deploy-mode client \
  --executor-memory 24G \
  ./examples/target/scala-2.11/jars/spark-examples_2.11-2.0.0-SNAPSHOT.jar


