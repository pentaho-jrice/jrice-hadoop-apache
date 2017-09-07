#!/bin/sh
#
# Hadoop - Apache Distribution - Prepare Hadoop Environment
# 
#   This script downloads Hadoop distributions and prepares the enviornment.  Creates 
#   directories, sets permissions, etc.

echo "."
echo "*********************************************************************************
echo "   downloading and installing hadoop core components..."
echo "*********************************************************************************

sudo su

config.vm.provision "file", source: "config-files/core-site.xml", destination: "/opt/hadoop-2.8.1/etc/hadoop/core-site.xml", run: "always"
config.vm.provision "file", source: "config-files/hadoop-env.sh", destination: "/opt/hadoop-2.8.1/etc/hadoop/hadoop-env.sh", run: "always"
config.vm.provision "file", source: "config-files/hdfs-site.xml", destination: "/opt/hadoop-2.8.1/etc/hadoop/hdfs-site.xml", run: "always"
config.vm.provision "file", source: "config-files/mapred-env.sh", destination: "/opt/hadoop-2.8.1/etc/hadoop/mapred-env.sh", run: "always"
config.vm.provision "file", source: "config-files/mapred-site.xml", destination: "/opt/hadoop-2.8.1/etc/hadoop/mapred-site.xml", run: "always"
config.vm.provision "file", source: "config-files/yarn-env.sh", destination: "/opt/hadoop-2.8.1/etc/hadoop/yarn-env.sh", run: "always"
config.vm.provision "file", source: "config-files/yarn-site.xml", destination: "/opt/hadoop-2.8.1/etc/hadoop/yarn-site.xml", run: "always"