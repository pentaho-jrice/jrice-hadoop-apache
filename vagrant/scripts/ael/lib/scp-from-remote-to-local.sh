#################################################################################################
# General Library Script to SSH into a remote machine
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

REMOTE_HOST=$1
REMOTE_USERNAME=$2
REMOTE_PASSWORD=$3
LOCAL_FILE=$4
REMOTE_FILE=$5

if [ -z ${1+x} ]; then 
    echo "Incorrect # of parameters.  Usage:  scp-from-remote-to-local.sh <host> <username> <password> <local file> <remote file>";
	exit -1
fi
if [ -z ${2+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  scp-from-remote-to-local.sh <host> <username> <password> <local file> <remote file>";
	exit -1
fi
if [ -z ${3+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  scp-from-remote-to-local.sh <host> <username> <password> <local file> <remote file>";
	exit -1
fi
if [ -z ${4+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  scp-from-remote-to-local.sh <host> <username> <password> <local file> <remote file>";
	exit -1
fi
if [ -z ${5+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  scp-from-remote-to-local.sh <host> <username> <password> <local file> <remote file>";
	exit -1
fi

sshpass -p "$REMOTE_PASSWORD" scp -r $LOCAL_FILE $REMOTE_USERNAME@$REMOTE_HOST:$REMOTE_FILE
