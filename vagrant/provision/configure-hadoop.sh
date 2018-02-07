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
cp /home/vagrant/config-files/hadoop/core-site.xml /opt/hadoop-2.8.1/etc/hadoop/core-site.xml
cp /home/vagrant/config-files/hadoop/hadoop-env.sh /opt/hadoop-2.8.1/etc/hadoop/hadoop-env.sh
cp /home/vagrant/config-files/hadoop/hdfs-site.xml /opt/hadoop-2.8.1/etc/hadoop/hdfs-site.xml
cp /home/vagrant/config-files/hadoop/mapred-env.sh /opt/hadoop-2.8.1/etc/hadoop/mapred-env.sh
cp /home/vagrant/config-files/hadoop/mapred-site.xml /opt/hadoop-2.8.1/etc/hadoop/mapred-site.xml
cp /home/vagrant/config-files/hadoop/yarn-env.sh /opt/hadoop-2.8.1/etc/hadoop/yarn-env.sh
cp /home/vagrant/config-files/hadoop/yarn-site.xml /opt/hadoop-2.8.1/etc/hadoop/yarn-site.xml