#!/bin/sh
#
# Hadoop - Apache Distribution - Prepare Hadoop Environment
# 
#   This script downloads Hadoop distributions and prepares the enviornment.  Creates 
#   directories, sets permissions, etc.

echo "."
echo "*********************************************************************************
echo "   downloading and installing hadoop core components..."
echo "*********************************************************************************

sudo su

cd /root

sudo apt-get install python-software-properties

wget https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz

cd /opt

tar xvzf /root/spark-2.2.0-bin-hadoop2.7.tgz
