#!/bin/sh
#
# Hadoop - Apache Distribution - Configure Hadoop 
# 
#   This script configures hadoop environment
echo "."
echo "*********************************************************************************"
echo "   Create directories for the MapReduce history server..."
echo "*********************************************************************************"

sudo su - hdfs

cd /opt/hadoop-2.8.1/bin

./hdfs dfs -mkdir -p /mr-history/tmp
./hdfs dfs -mkdir -p /mr-history/done
./hdfs dfs -chown -R yarn:hadoop  /mr-history
./hdfs dfs -mkdir -p /user/hdfs
