#!/bin/sh
#################################################################################################
# Switches the "latest" symbolic link to a specified version of AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

rm -f $PENTAHO_AEL_HOME/latest
ln -s $PENTAHO_AEL_HOME/8.1.0.0.212 $PENTAHO_AEL_HOME/latest