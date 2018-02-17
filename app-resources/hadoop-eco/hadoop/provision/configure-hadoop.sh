#!/bin/sh
#################################################################################################
# configure Hadoop Apps
# 
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************"
echo "   Configuring Hadoop Apps "
echo "*********************************************************************************"

SOURCE_HADOOP_CONFIG_FILES_DIR=$HADOOP_RESOURCES_CONFIG_FILES_DIR
TARGET_HADOOP_CONFIG_FILES_DIR=$HADOOP_CONF_DIR

#
# Copy the config files and env scripts for all hadoop apps (hdfs, hive, yarn, etc)
# to their proper location.
#
# Note:  These files are from this vagran git repo.  You can change them before "vagrant up"
# to tweak the hadoop setup when the VM is created.
#
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/core-site.xml $HADOOP_CONF_DIR/core-site.xml
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/hadoop-env.sh $HADOOP_CONF_DIR/hadoop-env.sh
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/mapred-env.sh $HADOOP_CONF_DIR/mapred-env.sh
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/mapred-site.xml $HADOOP_CONF_DIR/mapred-site.xml
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/yarn-env.sh $HADOOP_CONF_DIR/yarn-env.sh
cp $SOURCE_HADOOP_CONFIG_FILES_DIR/yarn-site.xml $HADOOP_CONF_DIR/yarn-site.xml