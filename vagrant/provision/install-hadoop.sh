#################################################################################################
# Install Hadoop - Apache Distribution
#
#   This script downloads Hadoop distributions and prepares the enviornment.  Creates 
#   directories, sets permissions, etc.
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

HADOOP_VERSION_NUMBER=2.8.1
HADOOP_DOWNLOAD_URL=http://apache.claz.org/hadoop/common/hadoop-$HADOOP_VERSION_NUMBER/hadoop-$HADOOP_VERSION_NUMBER.tar.gz

echo "."
echo "*********************************************************************************"
echo "   downloading and installing hadoop core components..."
echo "     - version #:     $HADOOP_VERSION_NUMBER "
echo "     - download url:  $HADOOP_DOWNLOAD_URL "
echo "*********************************************************************************"

cd /root

wget $HADOOP_DOWNLOAD_URL

cd /opt

tar xvzf /root/hadoop-$HADOOP_VERSION_NUMBER.tar.gz

echo "."
echo "*********************************************************************************"
echo "   Setting up Hadoop Users..."
echo "*********************************************************************************"

groupadd hadoop
useradd -g hadoop yarn
useradd -g hadoop hdfs
useradd -g hadoop mapred

echo "."
echo "*********************************************************************************"
echo "   Setting up Hadoop Data and Log Directories..."
echo "*********************************************************************************"

mkdir -p /var/data/hadoop/hdfs/nn
mkdir -p /var/data/hadoop/hdfs/snn
mkdir -p /var/data/hadoop/hdfs/dn
chown -R hdfs:hadoop /var/data/hadoop/hdfs
mkdir -p /var/log/hadoop/yarn
chown -R yarn:hadoop /var/log/hadoop/yarn

cd /opt/hadoop-$HADOOP_VERSION_NUMBER
mkdir logs
chmod g+w logs
chown -R yarn:hadoop .

echo "."
echo "*********************************************************************************"
echo "   Creating SymLink for Hadoop..."
echo "     - from:  /opt/hadoop-$HADOOP_VERSION_NUMBER"
echo "     - to:    $HADOOP_HOME"
echo "*********************************************************************************"

ln -s /opt/hadoop-$HADOOP_VERSION_NUMBER $HADOOP_HOME

echo "."
echo "*********************************************************************************"
echo "   Removing download file..."
echo "     - /root/hadoop-$HADOOP_VERSION_NUMBER.tar.gz"
echo "*********************************************************************************"

rm -f /root/hadoop-$HADOOP_VERSION_NUMBER.tar.gz