#!/bin/sh
#################################################################################################
# Start the latest version of AEL
#
# Will attempt to stop it in case it's already running
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

cd $PENTAHO_AEL_HOME/latest/data-integration/adaptive-execution

./daemon.sh stop
./daemon.sh start

tail -f daemon.log