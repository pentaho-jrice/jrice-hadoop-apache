# Pentaho Hadoop Development Environment

![Arch Diagram](pentaho-hadoop-dev-high-level-diagram.png)


Whoa!  There's a lot going on in that picture.  Let's break it down.

First of all, that guy is way too excited.  But I can see why.  His coding life just got easier.

He just cloned this repo, ran "vagrant up", and got a complete development environment with all those tools.  For free.  And it's all set up already.  And it "just works".  Here's what he got:
* An **Ubuntu Linux** virtual machine running on his laptop.
* A working **Apache hadoop cluster** with echosystem apps set up and running:  hdfs, yarn, hive, spark, etc.
* **Docker Swarm Node**, so he can deploy apps onto his laptop super easy and test his own apps in containers. 
* **Folders are synced** between his desktop and VM.  So he can switch back and forth.  Develop in his favorite Windows IDE.  Test against hadoop cluster in his VM.  No copying or SCPing files.
* **Maven and git are synced**.  Maven in his VM will use same config file and local repo as desktop. 
* **CLI tools** to access and **deploy** apps easily to **cloud providers**, like AWS, Google Cloud, and our own internal Cloud Stack.
* **Automation Scripts** to make using, developing, and testing Pentaho apps easier.  Scripts to:
  - Download and install latest QAT and snapshot versions of Pentaho Builds
  - Configure hadoop shims, AEL, server, and others
  - Copy code changes and updated .jars to install, clearing karaf caches if needed.
* **Ports are exposed** from VM to his desktop.  So, accessing **Web UIs** running in his VM is easy as typing "http://localhost<port-number>" into his browsewr
  - (Spark History Server, Yarn Resource Manager, Pentaho Server, etc)
* [AND on top of all that](https://www.youtube.com/watch?v=TJoBMayjlUo) he's running **[JRebel](https://zeroturnaround.com/software/jrebel/)**.  So he can **immediately see and test his Java code changes** to pentaho products running in the VM.  
  - No having to run a maven build, copy jars, clear karaf caches, restart pentaho apps.  
  - What used to take 2 - 3 minutes per change now takes seconds.  Increasing his feedback loop and dramatically speeding up his developmet.
  - That REALLY makes that guy excited.  He's gonna have to step away from the coffee for a while.
  
  Alright, enough yakkety yak.  Time to clackity clack.  