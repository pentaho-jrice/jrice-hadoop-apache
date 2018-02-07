#!/bin/sh
#################################################################################################
# Install Hadoop - Apache Distribution
#
#   This script downloads Hadoop distributions and prepares the enviornment.  Creates 
#   directories, sets permissions, etc.
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************
echo "   downloading and installing hadoop core components..."
echo "*********************************************************************************

cd /root

wget http://apache.claz.org/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz

cd /opt

tar xvzf /root/hadoop-2.8.1.tar.gz

echo "."
echo "*********************************************************************************
echo "   Setting up Hadoop Users..."
echo "*********************************************************************************

groupadd hadoop
useradd -g hadoop yarn
useradd -g hadoop hdfs
useradd -g hadoop mapred

echo "."
echo "*********************************************************************************
echo "   Setting up Hadoop Data and Log Directories..."
echo "*********************************************************************************

mkdir -p /var/data/hadoop/hdfs/nn
mkdir -p /var/data/hadoop/hdfs/snn
mkdir -p /var/data/hadoop/hdfs/dn
chown -R hdfs:hadoop /var/data/hadoop/hdfs
mkdir -p /var/log/hadoop/yarn
chown -R yarn:hadoop /var/log/hadoop/yarn

cd /opt/hadoop-2.8.1
mkdir logs
chmod g+w logs
chown -R yarn:hadoop .

