#!/bin/sh
#################################################################################################
# Contains function to read properties from a file
# 
# Created By Joe Rice - 2/19/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

initFile() {
   FILE_PATH=$1
   
   DIR=$(dirname "${FILE_PATH}")
   FILE_NAME=$(basename "${FILE_PATH}")
   
   if [ ! -f $FILE_PATH ]; then
    mkdir -p $DIR
    touch $FILE_PATH
   fi
}

