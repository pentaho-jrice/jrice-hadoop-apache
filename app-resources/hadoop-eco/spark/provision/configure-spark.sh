#!/bin/sh
#################################################################################################
# Configure Spark
# 
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Configuring Spark "
echo "*********************************************************************************"

#
# Copy the config files and env scripts for spark to their proper location.
#
# Note:  These files are from this vagran git repo.  You can change them before "vagrant up"
# to tweak the hadoop setup when the VM is created.
#
cp $SPARK_RESOURCES_CONFIG_FILES_DIR/spark-defaults.conf $SPARK_HOME/conf/spark-defaults.conf