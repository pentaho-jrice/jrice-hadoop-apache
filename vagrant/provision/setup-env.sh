#!/bin/sh
#################################################################################################
# Setup the Environment
#
# This script will install common utilities and apps such as git, maven, etc.
#
# Created By Joe Rice - 2/6/2018
#################################################################################################

echo "."
echo "*********************************************************************************
echo "   updating apt-get"
echo "*********************************************************************************

sudo apt-get update -y
	
echo "."
echo "*********************************************************************************
echo "   installing common utilities"
echo "*********************************************************************************

sudo apt-get install -y dos2unix
sudo apt-get install -y zip
sudo apt-get install -y unzip
	

echo "."
echo "*********************************************************************************
echo "   Installing Git"
echo "*********************************************************************************
sudo apt-get install git -y 


echo "."
echo "*********************************************************************************
echo "   Installing Maven"
echo "*********************************************************************************
cd /opt/
sudo curl -O http://apache.mirrors.pair.com/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz
sudo tar -xvsf apache-maven-3.5.2-bin.tar.gz
sudo mv apache-maven-3.5.2 maven
echo "export M2_HOME=/opt/maven" | sudo tee --append /etc/profile.d/mavenenv.sh
echo 'export PATH=${M2_HOME}/bin:${PATH}' | sudo tee --append /etc/profile.d/mavenenv.sh
sudo chmod +x /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh


echo "."
echo "*********************************************************************************
echo "   Installing Docker"
echo "*********************************************************************************
sudo apt-get update
sudo curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo apt-get install -y python
sudo apt install -y python-pip
sudo pip install docker

echo "."
echo "*********************************************************************************
echo "   Installing JRebel"
echo "*********************************************************************************

sudo curl -O http://dl.zeroturnaround.com/jrebel-stable-nosetup.zip
unzip jrebel-stable-nosetup.zip -d /opt


echo "."
echo "*********************************************************************************
echo "   Installing YourKit"
echo "*********************************************************************************

sudo curl -O https://www.yourkit.com/download/YourKit-JavaProfiler-2017.02-b71.zip
unzip YourKit-JavaProfiler-2017.02-b71.zip -d /opt
ln -s /opt/YourKit-JavaProfiler-2017.02/ /opt/YourKit

	
echo "."
echo "*********************************************************************************
echo "   Cleaning scripts and config files"
echo "*********************************************************************************

#
# dos2unix the config & script files since they're probably edited on local windows machine
#
find /home/vagrant/config-files -type f -print0 | xargs -0 dos2unix
find /home/vagrant/scripts -type f -print0 | xargs -0 dos2unix
find /home/vagrant/provision -type f -print0 | xargs -0 dos2unix

	