#################################################################################################
# Print Current Environment Context
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-pentaho-common-env.sh

source $GLOBAL_SCRIPTS_LIB_DIR/file-functions.sh
source $GLOBAL_SCRIPTS_LIB_DIR/properties-file-functions.sh

APP_NAME=$1

$(initFile "$PENTAHO_USER_DEV_ENV_DIR" "$PENTAH_ENV_CONTEXT_PROP_FILE_NAME")

CURRENT_PENTAHO_APP_VERSION=$(getProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$GLOBAL_CONTEXT_PREFIX.currentVersion")
CURRENT_PENTAHO_REMOTE_MACHINE=$(getProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$GLOBAL_CONTEXT_PREFIX.currentRemoteMachine")

echo "."
echo "*********************************************************************************"
echo "   Printing Global Env Context..."
echo "    - Global Pentaho App Version "
echo "    - to:  $TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH "
echo "*********************************************************************************"
