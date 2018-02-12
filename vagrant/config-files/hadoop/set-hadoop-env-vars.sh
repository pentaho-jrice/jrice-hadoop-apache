#################################################################################################
# Sets Environment Variables Hadoop
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

export HADOOP_HOME=/opt/hadoop
export HADOOP_EXAMPLES=$HADOOP_HOME/share/hadoop/mapreduce

export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
