#!/bin/sh
#################################################################################################
# Switches the "latest" symbolic link to a specified version of AEL
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

rm -f /home/vagrant/ael/latest
ln -s /home/vagrant/ael/8.1.0.0.212 /home/vagrant/ael/latest