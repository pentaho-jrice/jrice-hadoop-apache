#!/bin/sh
#
# Hadoop - Apache Distribution - Prepare Hadoop Environment
# 
#   This script downloads Hadoop distributions and prepares the enviornment.  Creates 
#   directories, sets permissions, etc.

echo "."
echo "*********************************************************************************
echo "   updating apt-get"
echo "*********************************************************************************

sudo apt-get update -y
	
echo "."
echo "*********************************************************************************
echo "   installing common utilities"
echo "*********************************************************************************

sudo apt-get install -y dos2unix
	
