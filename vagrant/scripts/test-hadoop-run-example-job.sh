#!/bin/sh
#
# Hadoop - Apache Distribution - Configure Hadoop 
# 
#   This script configures hadoop environment
echo "."
echo "*********************************************************************************"
echo "   Submit a sample job to hadoop..."
echo "*********************************************************************************"

yarn jar $HADOOP_EXAMPLES/hadoop-mapreduce-examples-2.8.1.jar pi 16 1000