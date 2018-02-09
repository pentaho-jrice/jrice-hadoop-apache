#!/bin/sh
#################################################################################################
# Set the permissions for key HDFS directories
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Create directories for the MapReduce history server..."
echo "*********************************************************************************"

cd /opt/hadoop-2.8.1/bin

./hdfs dfs -chmod -R 777 /user
./hdfs dfs -chmod -R 777 /tmp
./hdfs dfs -chmod -R 777 /opt/pentaho