#################################################################################################
# Sets Environment Variables Hadoop
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

source /etc/profile.d/set-vm-env-vars.sh

# Make sure the hadoop env are set so we pick up $HADOOP_HOME
source /etc/profile.d/set-hadoop-env-vars.sh

export PIG_HOME=/opt/pig
export PIG_CLASSPATH=$HADOOP_HOME/etc/hadoop/

export PIG_RESOURCES_DIR=$APP_RESOURCES_DIR/hadoop-eco/hadoop
export PIG_RESOURCES_SCRIPTS_DIR=$PIG_RESOURCES_DIR/scripts
export PIG_RESOURCES_PROVISION_DIR=$PIG_RESOURCES_DIR/provision
export PIG_RESOURCES_CONFIG_FILES_DIR=$PIG_RESOURCES_DIR/config-files

export PATH=$PATH:$PIG_HOME/bin:$PIG_RESOURCES_SCRIPTS_DIR:$PIG_RESOURCES_PROVISION_DIR
