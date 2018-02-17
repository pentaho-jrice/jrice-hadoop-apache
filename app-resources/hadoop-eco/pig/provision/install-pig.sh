#!/bin/sh
#################################################################################################
# Install Pig
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

PIG_VERSION_NUMBER=0.17.0
PIG_DOWNLOAD_URL=http://apache.claz.org/pig/pig-$PIG_VERSION_NUMBER/pig-$PIG_VERSION_NUMBER.tar.gz

echo "."
echo "*********************************************************************************"
echo "   downloading and installing Pig..."
echo "     - version #:     $PIG_VERSION_NUMBER "
echo "     - download url:  $PIG_DOWNLOAD_URL "
echo "*********************************************************************************"

cd /root

wget $PIG_DOWNLOAD_URL

cd /opt

tar xvzf /root/pig-$PIG_VERSION_NUMBER.tar.gz

echo "."
echo "*********************************************************************************"
echo "   Creating SymLink for Pig..."
echo "     - from:  /opt/pig-$PIG_VERSION_NUMBER"
echo "     - to:    $PIG_HOME"
echo "*********************************************************************************"

ln -s /opt/pig-$PIG_VERSION_NUMBER $PIG_HOME

echo "."
echo "*********************************************************************************"
echo "   Removing download file..."
echo "     - /root/pig-$PIG_VERSION_NUMBER.tar.gz"
echo "*********************************************************************************"

rm -f /root/pig-$PIG_VERSION_NUMBER.tar.gz
