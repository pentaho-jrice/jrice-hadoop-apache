#!/bin/sh
#################################################################################################
# Start Spark History Server
# 
# Note:  To configure spark history server, you can add spark.history properties to the 
# $SPARK_HOME/conf/spark-defaults.conf file.
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Start Spark History Server..."
echo "*********************************************************************************"

cd $SPARK_HOME/sbin

./stop-history-server.sh

