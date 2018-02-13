# Pentaho Hadoop Development Environment

![Arch Diagram](pentaho-hadoop-dev-high-level-diagram.png)


Whoa!  There's a lot going on in that picture.  Let's break it down.

First of all, that guy is way too excited.  But I can see why.  His coding life just got easier.

He just cloned this repo, ran "vagrant up", and got a complete development environment with all those tools.  For free.  And it's all set up already.  And it "just works".  Here's what he got:
* An Ubuntu Linux virtual machine running on his laptop.
* A working apache hadoop cluster with usual suspects set up and running:  hdfs, yarn, hive, spark.
* Docker Swarm Node, so he can deploy apps onto his laptop super easy and test his own apps in containers. 
* Folders are synced between his desktop and VM.  