#################################################################################################
# Sets Environment Variables for Common Pentaho Scripts
# 
# Created By Joe Rice - 2/19/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

GLOBAL_SCRIPTS_LIB_DIR=$VM_SCRIPTS_DIR/lib

PENTAHO_USER_DEV_ENV_DIR=$PENTAHO_USER_DIR/dev-env

PENTAH_ENV_CONTEXT_PROP_FILE_NAME=pentaho-env-context.properties

PENTAH_ENV_CONTEXT_PROP_FILE_PATH=$PENTAHO_USER_DEV_ENV_DIR/$PENTAH_ENV_CONTEXT_PROP_FILE_NAME

GLOBAL_CONTEXT_PREFIX=global