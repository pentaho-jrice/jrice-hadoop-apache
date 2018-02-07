#!/bin/sh
#################################################################################################
# Install Spark
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************
echo "   downloading and installing Spark..."
echo "*********************************************************************************

cd /root

sudo apt-get install python-software-properties

wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz

cd /opt

tar xvzf /root/spark-2.2.0-bin-hadoop2.7.tgz
