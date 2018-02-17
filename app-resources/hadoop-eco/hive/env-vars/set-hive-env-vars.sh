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

export HIVE_HOME=/opt/apache-hive
export HIVE_CLASSPATH=$HADOOP_HOME/etc/hadoop/

export HIVE_RESOURCES_DIR=$APP_RESOURCES_DIR/hadoop-eco/hive
export HIVE_RESOURCES_SCRIPTS_DIR=$HIVE_RESOURCES_DIR/scripts
export HIVE_RESOURCES_PROVISION_DIR=$HIVE_RESOURCES_DIR/provision
export HIVE_RESOURCES_CONFIG_FILES_DIR=$HIVE_RESOURCES_DIR/config-files

export PATH=$PATH:$HIVE_HOME/bin:$HIVE_RESOURCES_SCRIPTS_DIR:$HIVE_RESOURCES_PROVISION_DIR
