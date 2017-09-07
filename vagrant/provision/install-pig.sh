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

wget http://apache.claz.org/pig/pig-0.17.0/pig-0.17.0.tar.gz

cd /opt

tar xvzf /root/pig-0.17.0.tar.gz
