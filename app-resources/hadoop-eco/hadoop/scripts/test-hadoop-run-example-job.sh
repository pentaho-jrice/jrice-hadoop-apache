#!/bin/sh
#################################################################################################
# Test Hadoop
# 
# This script tests that hadoop and yarn are set up correctly by submitting a sample YARN job
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Submit a sample job to hadoop..."
echo "*********************************************************************************"

yarn jar $HADOOP_EXAMPLES/hadoop-mapreduce-examples-2.8.1.jar pi 16 1000