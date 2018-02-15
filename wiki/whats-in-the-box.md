# What's in the Box?

![Arch Diagram](../pentaho-hadoop-dev-high-level-diagram.png)


**Here's what's you get:**

* An **Ubuntu Linux** virtual machine running on your laptop.  You can ssh into it and use like a local shell.  
* A working **Apache hadoop cluster** set up and running:  hdfs, yarn, hive, spark, etc.
* **Docker Swarm**, so you can deploy apps onto your laptop super easy and test your own containerized apps. 
* **Folders are synced** between your desktop and VM.  So you can switch back and forth.  Develop in your favorite Windows IDE.  Test against hadoop cluster in your VM.  No copying or SCPing files.
* **Maven and git are synced**.  Maven in your VM will use same config file and local repo as desktop. 
* **CLI tools** to access and **deploy** apps to **cloud providers**, like AWS, Google Cloud, and our own internal Cloud Stack.
* **Automation Scripts** to make using, developing, and testing Pentaho apps easier.  Scripts to:
  - Download and install latest QAT and snapshot versions of Pentaho Builds
  - Configure hadoop shims, AEL, server, and others
  - Copy code changes and updated .jars to snapshot & QAT builds, clearing karaf caches if needed.
  - Setting up, configuring, and deploying apps to remote Pentaho Big Data Clusters (CDH, HDP, MapR, etc).
* **Ports are exposed** from VM to your desktop.  So, accessing **Web UIs** running in your VM is easy as typing "http://localhost<port-number>" into your browsewr
  - (Spark yourtory Server, Yarn Resource Manager, Pentaho Server, etc)
* [AND on top of all that](https://www.youtube.com/watch?v=TJoBMayjlUo) you're running **[JRebel](https://zeroturnaround.com/software/jrebel/)**.  So you can **immediately see and test your Java code changes**...like right away.  
  - No having to run a maven build, copy jars, clear karaf caches, restart pentaho apps.  
  - What used to take 2 - 3 minutes per change now takes seconds.  Increasing your feedback loop and dramatically speeding up your developmet.

**Here's why you should care**

* **It'll speed up development**
  - Environment is pre-configured for debugging, profiling with YourKit, hot deploys & instant changes with JRebel.
  - Pre-canned automation scripts for working with cloud and Big Data clusters.

* **Shareable**
  - Quick dev environment setup for new team members. 
  - Somebody create a new script to automate some reptitive task?  Check it in and share with everybody.

* **Portable**
  - Moving to a new developemnt laptop? Recreate your entire dev environment in a few easy steps and pick up where you left off.
  - Same environment across Linux, Mac OSx, Windows and others...any OS that Vagrant and Docker supports


Alright, enough yakkety yak.  Time to clackity clack.  
  
<br>
<br>

[< Project Home](../README.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Project Home](../README.md)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [Getting Started >](getting-started.md)

