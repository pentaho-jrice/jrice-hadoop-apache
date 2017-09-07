#!/bin/sh
#
# Hadoop - Apache Distribution - Configure Hadoop 
# 
#   This script configures hadoop environment
echo "."
echo "*********************************************************************************"
echo "   Start YARN Resource Manager..."
echo "*********************************************************************************"

sudo su - yarn

cd /opt/hadoop-2.8.1/sbin

./yarn-daemon.sh start resourcemanager

echo "."
echo "*********************************************************************************"
echo "   Start YARN Node Manager..."
echo "*********************************************************************************"

./yarn-daemon.sh start nodemanager

echo "."
echo "*********************************************************************************"
echo "   Start MapReduce History Server..."
echo "*********************************************************************************"

./mr-jobhistory-daemon.sh start historyserver
