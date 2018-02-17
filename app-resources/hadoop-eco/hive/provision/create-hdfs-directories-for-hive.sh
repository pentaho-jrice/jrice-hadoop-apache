#!/bin/sh
#################################################################################################
# Create Hive Directories in HDFS
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Creating HDFS directories for Hive..."
echo "*********************************************************************************"

cd $HADOOP_HOME/bin

./hdfs dfs -mkdir /tmp
./hdfs dfs -mkdir -p /user/hive/warehouse
./hdfs dfs -chmod g+w /tmp
./hdfs dfs -chmod g+w /user/hive/warehouse

./hdfs dfs -chmod -R 777 /tmp