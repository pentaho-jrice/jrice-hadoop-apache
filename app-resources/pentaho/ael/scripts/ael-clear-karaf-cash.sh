#!/bin/sh
#################################################################################################
# Clears the Karaf Cache.  
#
# Run this script when you update code on AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Clearing AEL Karaf Cache..."
echo "     - karaf cache directory:  $PENTAHO_AEL_HOME/latest/data-integration/system/karaf/caches/ "
echo "*********************************************************************************"

rm -f -R $PENTAHO_AEL_HOME/latest/data-integration/system/karaf/caches/

echo .