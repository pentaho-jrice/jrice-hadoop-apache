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

wget http://apache.cs.utah.edu/hive/hive-2.3.0/apache-hive-2.3.0-bin.tar.gz

cd /opt

tar xvzf /root/apache-hive-2.3.0-bin.tar.gz
