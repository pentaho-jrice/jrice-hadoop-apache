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
sudo apt-get install -y sshpass

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
rm -f apache-maven-3.5.2-bin.tar.gz
sudo rm -R /opt/maven/conf
sudo ln -s $MAVEN_CONF_DIR /opt/maven/conf


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
echo "*********************************************************************************"
echo "   Installing Ansible"
echo "*********************************************************************************"
sudo apt-get install software-properties-common -y 
sudo apt-add-repository ppa:ansible/ansible -y 
sudo apt-get update -y 
sudo apt-get install ansible -y 
# install ansible dependencies.  Boto, docker-py, and ec2.py
sudo pip install boto
sudo pip install boto3
sudo pip install docker
sudo wget https://raw.github.com/ansible/ansible/devel/contrib/inventory/ec2.py
sudo mv ec2.py /etc/ansible
sudo chmod +x /etc/ansible/ec2.py
sudo wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini
sudo mv ec2.ini /etc/ansible

echo "."
echo "*********************************************************************************"
echo "   Installing Terraform"
echo "*********************************************************************************"
sudo curl -L https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip >~/terraform_0.11.3_linux_amd64.zip
sudo unzip ~/terraform_0.11.3_linux_amd64.zip -d /usr/local/bin

echo "."
echo "*********************************************************************************"
echo "   Installing Cloudstack CLI"
echo "*********************************************************************************"
sudo gem install cloudstack-cli 

echo "."
echo "*********************************************************************************"
echo "   installing node.js"
echo "*********************************************************************************"
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y 


echo "."
echo "*********************************************************************************
echo "   Installing JRebel"
echo "*********************************************************************************

sudo curl -O http://dl.zeroturnaround.com/jrebel-stable-nosetup.zip
unzip jrebel-stable-nosetup.zip -d /opt
rm -f jrebel-stable-nosetup.zip -d /opt


echo "."
echo "*********************************************************************************
echo "   Installing YourKit"
echo "*********************************************************************************

sudo curl -O https://www.yourkit.com/download/YourKit-JavaProfiler-2017.02-b71.zip
unzip YourKit-JavaProfiler-2017.02-b71.zip -d /opt
ln -s /opt/YourKit-JavaProfiler-2017.02/ /opt/YourKit
rm -f YourKit-JavaProfiler-2017.02-b71.zip

echo "."
echo "*********************************************************************************
echo "   Installing libwebkitgtk - needed for PDI / Spoon"
echo "*********************************************************************************
		
sudo apt-get install libwebkitgtk-1.0-0
	
	
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

sudo dos2unix /etc/profile.d/*

	