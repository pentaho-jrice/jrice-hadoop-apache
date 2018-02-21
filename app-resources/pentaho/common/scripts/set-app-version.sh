#################################################################################################
# Sets Environment Variables for AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-pentaho-common-env.sh

source $DIR/lib/pentaho-env-context-functions.sh

APP_NAME=$1
CURRENT_VERSION=$2

setAppCurrentRemoteMachine "$APP_NAME" "$CURRENT_VERSION"