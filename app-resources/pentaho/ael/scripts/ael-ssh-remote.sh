#################################################################################################
# Clears the Karaf Cache.  
#
# Run this script when you update code on AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-env.sh

lib/ssh-remote.sh $REMOTE_AEL_SERVER_HOSTNAME $REMOTE_AEL_SERVER_USERNAME  $REMOTE_AEL_SERVER_PASSWORD $1