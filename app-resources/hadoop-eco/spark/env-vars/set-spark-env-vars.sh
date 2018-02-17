#################################################################################################
# Sets Environment Variables Hadoop
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

source /etc/profile.d/set-vm-env-vars.sh

export SPARK_HOME=/opt/spark

export SPARK_RESOURCES_DIR=$APP_RESOURCES_DIR/hadoop-eco/spark
export SPARK_RESOURCES_SCRIPTS_DIR=$SPARK_RESOURCES_DIR/scripts
export SPARK_RESOURCES_PROVISION_DIR=$SPARK_RESOURCES_DIR/provision
export SPARK_RESOURCES_CONFIG_FILES_DIR=$SPARK_RESOURCES_DIR/config-files

export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin:$SPARK_RESOURCES_SCRIPTS_DIR:$SPARK_RESOURCES_PROVISION_DIR
