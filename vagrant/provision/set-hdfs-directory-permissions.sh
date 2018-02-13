#!/bin/sh
#################################################################################################
# Set the permissions for key HDFS directories
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Setting the permissions for the HDFS directoriesr..."
echo "*********************************************************************************"

cd $HADOOP_HOME/bin

./hdfs dfs -chmod -R 777 /user
./hdfs dfs -chmod -R 777 /tmp
./hdfs dfs -chmod -R 777 /opt/pentaho