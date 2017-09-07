#!/bin/sh
#
# Hadoop - Apache Distribution - Configure Hadoop 
# 
#   This script configures hadoop environment
echo "."
echo "*********************************************************************************"
echo "   Start HDFS Name Node..."
echo "*********************************************************************************"

cd /opt/hadoop-2.8.1/sbin

./hadoop-daemon.sh start namenode

echo "."
echo "*********************************************************************************"
echo "   Start HDFS Secondary Name Node..."
echo "*********************************************************************************"

./hadoop-daemon.sh start secondarynamenode

echo "."
echo "*********************************************************************************"
echo "   Start HDFS Data Node..."
echo "*********************************************************************************"

./hadoop-daemon.sh start datanode
