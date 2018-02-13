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

#
# Copy the config files and env scripts for all hadoop apps (hdfs, hive, yarn, etc)
# to their proper location.
#
# Note:  These files are from this vagran git repo.  You can change them before "vagrant up"
# to tweak the hadoop setup when the VM is created.
#
cp /home/vagrant/config-files/hadoop/core-site.xml $HADOOP_CONF_DIR/core-site.xml
cp /home/vagrant/config-files/hadoop/hadoop-env.sh $HADOOP_CONF_DIR/hadoop-env.sh
cp /home/vagrant/config-files/hadoop/hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
cp /home/vagrant/config-files/hadoop/mapred-env.sh $HADOOP_CONF_DIR/mapred-env.sh
cp /home/vagrant/config-files/hadoop/mapred-site.xml $HADOOP_CONF_DIR/mapred-site.xml
cp /home/vagrant/config-files/hadoop/yarn-env.sh $HADOOP_CONF_DIR/yarn-env.sh
cp /home/vagrant/config-files/hadoop/yarn-site.xml $HADOOP_CONF_DIR/yarn-site.xml