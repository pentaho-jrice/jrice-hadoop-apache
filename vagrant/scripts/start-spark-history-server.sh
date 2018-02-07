#!/bin/sh
#################################################################################################
# Start Spark History Server
# 
# Note:  To configure spark history server, you can add spark.history properties to the 
# /opt/spark-2.2.0-bin-hadoop2.7/conf/spark-defaults.conf file.
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Start Spark History Server..."
echo "*********************************************************************************"

cd /opt/spark-2.2.0-bin-hadoop2.7/sbin

./start-history-server.sh

