#!/bin/sh
#################################################################################################
# Install Spark
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

SPARK_VERSION_NUMBER=2.2.0
SUPPORTED_HADOOP_VERSION=2.7
SPARK_DOWNLOAD_URL=https://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION.tgz

echo "."
echo "*********************************************************************************"
echo "   downloading and installing Spark..."
echo "     - version #:     $SPARK_VERSION_NUMBER "
echo "     - download url:  $SPARK_DOWNLOAD_URL "
echo "*********************************************************************************"

cd /root

sudo apt-get install python-software-properties

wget $SPARK_DOWNLOAD_URL

cd /opt

tar xvzf /root/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION.tgz

echo "."
echo "*********************************************************************************"
echo "   Creating SymLink for Hive..."
echo "     - from:  /opt/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION
echo "     - to:    $SPARK_HOME
echo "*********************************************************************************"

ln -s /opt/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION $SPARK_HOME

echo "."
echo "*********************************************************************************"
echo "   Removing download file..."
echo "     - /root/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION.tgz
echo "*********************************************************************************"

rm -f /root/spark-$SPARK_VERSION_NUMBER-bin-hadoop$SUPPORTED_HADOOP_VERSION.tgz
