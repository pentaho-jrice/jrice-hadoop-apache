#!/bin/sh
#
# Hadoop - Apache Distribution - Configure Hadoop 
# 
#   This script configures hadoop environment
echo "."
echo "*********************************************************************************"
echo "   Formatting HDFS..."
echo "*********************************************************************************"

sudo su - hdfs

cd /opt/hadoop-2.8.1/bin

./hdfs namenode -format
