#################################################################################################
# Sets Environment Variables for AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/../../common/scripts/set-pentaho-common-env.sh

CURRENT_AEL_VERSION=8.1.0.0-251

REMOTE_AEL_SERVER_HOSTNAME=svqxbdcn6cdh513n2.pentahoqa.com
REMOTE_AEL_SERVER_USERNAME=devuser
REMOTE_AEL_SERVER_PASSWORD=password
REMOTE_AEL_SERVER_AEL_HOME=/home/devuser/Joe/pentaho/dist/8.1.0.0-25

REMOTE_AEL_SERVER_LOGIN_CMD=$REMOTE_AEL_SERVER_USERNAME@$REMOTE_AEL_SERVER_HOSTNAME


