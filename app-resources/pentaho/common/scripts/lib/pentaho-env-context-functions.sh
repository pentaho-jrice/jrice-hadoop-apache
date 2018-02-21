#################################################################################################
# Contains function to get and set environment context values
#
# Environment context are the users current local enviornment - i.e. current version of app, etc.
# 
# Created By Joe Rice - 2/19/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $PENTAHO_COMMON_APP_SCRIPTS_DIR/set-pentaho-common-env.sh

source $GLOBAL_SCRIPTS_LIB_DIR/properties-file-functions.sh

setAppCurrentVersion() {
   APP_NAME=$1
   PROP_VALUE=$2
   PROP_NAME=currentVersion
   
   setProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME" "$PROP_VALUE"
}

getAppCurrentVersion() {
   APP_NAME=$1
   PROP_NAME=currentVersion
   
   PROP_VALUE=$(getProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME")
   
   echo $PROP_VALUE
}

setAppCurrentRemoteMachine() {
   APP_NAME=$1
   PROP_VALUE=$2
   PROP_NAME=currentRemoteMachine
   
   setProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME" "$PROP_VALUE"
}

getAppCurrentRemoteMachine() {
   APP_NAME=$1
   PROP_NAME=currentRemoteMachine
   
   PROP_VALUE=$(getProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME")
   
   echo $PROP_VALUE
}
setAppCurrentRemoteHomeDir() {
   APP_NAME=$1
   PROP_VALUE=$2
   PROP_NAME=currentRemoteHomeDir
   
   setProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME" "$PROP_VALUE"
}

getAppCurrentRemoteHomeDir() {
   APP_NAME=$1
   PROP_NAME=currentRemoteHomeDir
   
   PROP_VALUE=$(getProperty "$PENTAH_ENV_CONTEXT_PROP_FILE_PATH" "$APP_NAME.$PROP_NAME")
   
   echo $PROP_VALUE
}
