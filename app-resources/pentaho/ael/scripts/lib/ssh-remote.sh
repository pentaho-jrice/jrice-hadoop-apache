#################################################################################################
# General Library Script to SSH into a remote machine
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

REMOTE_HOST=$1
REMOTE_USERNAME=$2
REMOTE_PASSWORD=$3
REMOTE_COMMAND=$4

if [ -z ${1+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  ssh-remote.sh <host> <username> <password> [<remote command>]";
	exit -1
fi
if [ -z ${2+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  ssh-remote.sh <host> <username> <password> [<remote command>]";
	exit -1
fi
if [ -z ${3+x} ]; then 
	echo "Incorrect # of parameters.  Usage:  ssh-remote.sh <host> <username> <password> [<remote command>]";
	exit -1
fi


sshpass -p "$REMOTE_PASSWORD" ssh $REMOTE_USERNAME@$REMOTE_HOST $REMOTE_COMMAND