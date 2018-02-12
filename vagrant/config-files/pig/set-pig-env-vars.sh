#################################################################################################
# Sets Environment Variables Hadoop
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

# Make sure the hadoop env are set so we pick up $HADOOP_HOME
source /etc/profile.d/set-hadoop-env-vars.sh

export PIG_HOME=/opt/pig
export PIG_CLASSPATH=$HADOOP_HOME/etc/hadoop/

export PATH=$PATH:$PIG_HOME/bin
