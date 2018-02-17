#################################################################################################
# Clears the Karaf Cache.  
#
# Run this script when you update code on AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-env.sh

echo "."
echo "*********************************************************************************"
echo "   Clearing AEL Karaf Cache..."
echo "     - karaf cache directory:  $PENTAHO_AEL_HOME/latest/data-integration/system/karaf/caches/ "
echo "*********************************************************************************"

$DIR/lib/ssh-remote.sh $REMOTE_AEL_SERVER_HOSTNAME $REMOTE_AEL_SERVER_USERNAME  $REMOTE_AEL_SERVER_PASSWORD "rm -R $REMOTE_AEL_SERVER_AEL_HOME/data-integration/system/karaf/caches/"

echo .