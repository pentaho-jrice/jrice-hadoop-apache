#################################################################################################
# Sets Environment Variables Hadoop
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

source /etc/profile.d/set-vm-env-vars.sh

export HADOOP_HOME=/opt/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_EXAMPLES=$HADOOP_HOME/share/hadoop/mapreduce

export HADOOP_RESOURCES_DIR=$APP_RESOURCES_DIR/hadoop-eco/hadoop
export HADOOP_RESOURCES_SCRIPTS_DIR=$HADOOP_RESOURCES_DIR/scripts
export HADOOP_RESOURCES_PROVISION_DIR=$HADOOP_RESOURCES_DIR/provision
export HADOOP_RESOURCES_CONFIG_FILES_DIR=$HADOOP_RESOURCES_DIR/config-files

export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_RESOURCES_SCRIPTS_DIR:$HADOOP_RESOURCES_PROVISION_DIR
