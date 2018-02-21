#!/bin/sh
#################################################################################################
# Contains function to read properties from a file
# 
# Created By Joe Rice - 2/19/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $VM_SCRIPTS_DIR/lib/file-functions.sh

getProperty() {
   PROP_FILE=$1
   PROP_KEY=$2
   
   if [ ! -f $PROP_FILE ]; then
    echo ""
    return 0
   fi
   
   PROP_VALUE=`cat $PROP_FILE | grep "$PROP_KEY" | cut -d'=' -f2`
   echo $PROP_VALUE
}

setProperty () {
   PROP_FILE=$1
   PROP_NAME=$2
   NEW_VAL=$3
   
   $(initFile "$PROP_FILE")
   
   OLD_VALUE=$(getProperty "$PROP_FILE" "$PROP_NAME")
   
   if [ -z $OLD_VALUE ]; then 
	echo "$PROP_NAME=$NEW_VAL" >> $PROP_FILE;
   else
   	awk -v var="$PROP_NAME" -v new_val="$NEW_VAL" 'BEGIN{FS=OFS="="}match($1, "^\\s*" var "\\s*") {$2="" new_val}1' "$PROP_FILE" > tmp && mv tmp $PROP_FILE
   fi
}

