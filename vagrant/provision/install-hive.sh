#!/bin/sh
#################################################################################################
# Install Hive
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

HIVE_VERSION_NUMBER=2.3.2
HIVE_DOWNLOAD_URL=http://download.nextag.com/apache/hive/hive-$HIVE_VERSION_NUMBER/apache-hive-$HIVE_VERSION_NUMBER-bin.tar.gz

echo "."
echo "*********************************************************************************
echo "   Downloading Hive..."
echo "     - version #:     $HIVE_VERSION_NUMBER "
echo "     - download url:  $HIVE_DOWNLOAD_URL "
echo "*********************************************************************************

cd /root

wget $HIVE_DOWNLOAD_URL

cd /opt

tar xvzf /root/apache-hive-$HIVE_VERSION_NUMBER-bin.tar.gz

echo "."
echo "*********************************************************************************
echo "   Creating SymLink for Hive..."
echo "     - from:  /opt/apache-hive-$HIVE_VERSION_NUMBER-bin
echo "     - to:    $HIVE_HOME
echo "*********************************************************************************

ln -s /opt/apache-hive-$HIVE_VERSION_NUMBER-bin $HIVE_HOME

echo "."
echo "*********************************************************************************
echo "   Removing download file..."
echo "     - /root/apache-hive-$HIVE_VERSION_NUMBER-bin.tar.gz
echo "*********************************************************************************

rm -f /root/apache-hive-$HIVE_VERSION_NUMBER-bin.tar.gz
