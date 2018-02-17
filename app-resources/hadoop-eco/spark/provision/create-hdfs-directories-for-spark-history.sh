#!/bin/sh
#################################################################################################
# Create Map Spark History Server Directories in HDFS
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Create directories for the Spark  history server..."
echo "*********************************************************************************"

cd $HADOOP_HOME/bin

./hdfs dfs -mkdir -p /user/spark/spark2ApplicationHistory