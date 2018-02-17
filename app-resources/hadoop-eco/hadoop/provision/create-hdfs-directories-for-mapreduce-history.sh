#!/bin/sh
#################################################################################################
# Create Map Reduce History Server Directories in HDFS
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Create directories for the MapReduce history server..."
echo "*********************************************************************************"

cd $HADOOP_HOME/bin

./hdfs dfs -mkdir -p /mr-history/tmp
./hdfs dfs -mkdir -p /mr-history/done
./hdfs dfs -chown -R yarn:hadoop  /mr-history
./hdfs dfs -mkdir -p /user/hdfs

./hdfs dfs -chmod -R 777 /user