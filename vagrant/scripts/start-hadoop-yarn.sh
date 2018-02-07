#!/bin/sh
#################################################################################################
# Start Yarn
# 
# This script Starts Yarn Services - Resource Manager, YARN Node Managre, MR History Service
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

echo "."
echo "*********************************************************************************"
echo "   Start YARN Resource Manager..."
echo "*********************************************************************************"

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
