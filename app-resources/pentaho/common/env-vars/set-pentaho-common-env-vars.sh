#################################################################################################
# Sets Environment Variables for Pentaho Common
#
# This script is meant to be copied to "/etc/profile.d" in the VM so that they are loaded
# on startup for all users.
#
# Created By Joe Rice - 2/12/2018
#################################################################################################

source /etc/profile.d/set-vm-env-vars.sh

export PENTAHO_COMMON_APP_RESOURCES_DIR=$APP_RESOURCES_DIR/pentaho/common
export PENTAHO_COMMON_APP_SCRIPTS_DIR=$PENTAHO_COMMON_APP_RESOURCES_DIR/scripts
export PENTAHO_COMMON_APP_PROVISION_DIR=$PENTAHO_COMMON_APP_RESOURCES_DIR/provision
export PENTAHO_COMMON_APP_CONFIG_FILES_DIR=$PENTAHO_COMMON_APP_RESOURCES_DIR/config-files

export PATH=$PATH:$PENTAHO_COMMON_APP_SCRIPTS_DIR:$PENTAHO_COMMON_APP_PROVISION_DIR