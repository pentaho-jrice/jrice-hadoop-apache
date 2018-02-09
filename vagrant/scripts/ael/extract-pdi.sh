#!/bin/sh
#################################################################################################
# Downloads the PDI EE Client
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

if [ -z ${1+x} ]; then 
	echo "Incorrect # of parameters.  Must pass in Version #";
	exit -1
fi

PDI_VERSION_NUMBER=$1

PDI_DOWNLOAD_DIR=/c/dev/downloads
PDI_DIST_DIR=/c/dev/dist
AEL_DIST_DIR=/c/ael

PDI_FOLDER_VERSION_NUMBER=8.1-QAT
PDI_FILE_VERSION_NUMBER=8.1.0.0-$PDI_VERSION_NUMBER

echo mkdir -f $PDI_DOWNLOAD_DIR/$PDI_FILE_VERSION_NUMBER

cd $PDI_DOWNLOAD_DIR/$PDI_FILE_VERSION_NUMBER

curl -O http://build.pentaho.com/hosted/8.1-QAT/$PDI_VERSION_NUMBER/pdi-ce-$PDI_FILE_VERSION_NUMBER.zip

mkdir -f $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER
mkdir -f $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee

unzip pdi-ce-$PDI_FILE_VERSION_NUMBER.zip -d $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee

cd $PDI_DIST_DIR/$PDI_FILE_VERSION_NUMBER/ee/data-integration

./spark-app-builder.sh

mkdir -f $AEL_DIST_DIR/$PDI_FILE_VERSION_NUMBER
