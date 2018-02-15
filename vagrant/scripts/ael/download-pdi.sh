#!/bin/sh
#################################################################################################
# Downloads the PDI EE Client
#
# This script will:
#  - download a specified verson of PDI
#  - unzip and configure PDI
#  - run the PDI spark app builder to build AEL
#  - Unzip and configure AEL
#  - Upload the AEL spark executor zip into HDFS (replacing previous version)
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

#####
# Validate Input and Set Env Variables
#####
if [ -z ${1+x} ]; then 
	echo "Incorrect # of parameters.  Must pass in Version #";
	exit -1
fi

PDI_VERSION_NUMBER=$1

PDI_DOWNLOAD_DIR=$PENTAHO_PDI_HOME/downloads
PDI_DIST_DIR=$PENTAHO_PDI_HOME/dist
AEL_DIST_DIR=$PENTAHO_AEL_HOME

PDI_FOLDER_VERSION_NUMBER=8.1-QAT
PDI_FILE_VERSION_NUMBER=8.1.0.0-$PDI_VERSION_NUMBER

PDI_DOWNLOAD_URL=http://build.pentaho.com/hosted/8.1-QAT/$PDI_VERSION_NUMBER/pdi-ce-$PDI_FILE_VERSION_NUMBER.zip

#
# Create new download directory for new version and download new version of PDI
#
mkdir -p $PDI_DOWNLOAD_DIR/$PDI_FILE_VERSION_NUMBER

cd $PDI_DOWNLOAD_DIR/$PDI_FILE_VERSION_NUMBER

echo "."
echo "*********************************************************************************"
echo "   Downloading PDI..."
echo "    - version:        $PDI_FILE_VERSION_NUMBER"
echo "    - from this urL:  $PDI_DOWNLOAD_URL "
echo "    - To this dir:    $PDI_DOWNLOAD_DIR/$PDI_FILE_VERSION_NUMBER "
echo "*********************************************************************************"

time curl -O $PDI_DOWNLOAD_URL

#
# Create new distribution folder for new version and unzip PDI into that folder
#
mkdir -p $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER

echo "."
echo "*********************************************************************************"
echo "   Unzipping PDI..."
echo "    - from this file:  pdi-ce-$PDI_FILE_VERSION_NUMBER.zip "
echo "    - To this dir:     $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee "
echo "*********************************************************************************"

time unzip pdi-ce-$PDI_FILE_VERSION_NUMBER.zip -d $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee

#
# Copy the configuration files & scripts for PDI
#

echo "."
echo "*********************************************************************************"
echo "   Copying PDI Config Files..."
echo "*********************************************************************************"

cp /home/vagrant/config-files/pentaho-pdi/spoon.sh $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration
cp /home/vagrant/config-files/pentaho-pdi/Spoon.bat $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration

#
# CD into the new distribution folder and build the AEL PDI spark driver app
#
cd $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration

echo "."
echo "*********************************************************************************"
echo "   Running PDI Spark App Builder - Building AEL..."
echo "    - executing this script:  $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration/spark-app-builder.sh "
echo "    - To this dir:     $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee "
echo "*********************************************************************************"

time ./spark-app-builder.sh

#
# Create the new AEL Directory and unzip the AEL PDI spark driver app into it
#
mkdir -f $AEL_DIST_DIR/$PDI_FILE_VERSION_NUMBER

echo "."
echo "*********************************************************************************"
echo "   Unzipping AEL..."
echo "    - from this file:  $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration/pdi-spark-driver.zip "
echo "    - To this dir:     $AEL_DIST_DIR/$PDI_FILE_VERSION_NUMBER "
echo "*********************************************************************************"

time unzip pdi-spark-driver.zip -d $AEL_DIST_DIR/$PDI_FILE_VERSION_NUMBER

#
# Set up the symbolic links so that the new AEL version is the "latest" symlink directory points to new version.
#
rm -f $AEL_DIST_DIR/latest
ln -s $AEL_DIST_DIR/$PDI_FILE_VERSION_NUMBER $AEL_DIST_DIR/latest

echo "."
echo "*********************************************************************************"
echo "   Copying AEL Config Files..."
echo "*********************************************************************************"

#
# Copy the configuration files and scrips for AEL
#
cp /home/vagrant/config-files/pentaho-ael/application.properties $AEL_DIST_DIR/latest/data-integration/adaptive-execution/config/application.properties

echo "."
echo "*********************************************************************************"
echo "   loading the latest spark executor to HDFS..."
echo "    - from this file:    $AEL_DIST_DIR/latest/pdi-spark-executor.zip "
echo "    - To this HDFS dir:  hdfs:/opt/pentaho/pdi-spark-executor.zip "
echo "*********************************************************************************"

#
# Upload the latest spark executor.zip into HDFS
#
time hdfs dfs -put -f $AEL_DIST_DIR/latest/pdi-spark-executor.zip /opt/pentaho/pdi-spark-executor.zip