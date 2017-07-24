# Vagrant Dev Environment for Pentaho Platform

## Overview

This folder provides a neat little dev-environment in a can.   Useful for developing Pentaho platform, components, apps, plugins, and extensions.

Basically, it is a vagrant VM running Ubuntu Linux that is pre-configured with a lot of useful tools.  

## Dev tools installed out of the box (as of 07/2017)
 
| Tool Name | Description |
| ------ | ----------- |
| **Languages** | |
|  - Java   |  |
|  - Scala   |  |
|  - Python   |  |
| **Build Tools** | |
|  - Maven   |  |
|  - Ant  | X |
| **Docker** | |
|  - Docker Engine   |  |
|  - Docker Compose   |  |
|  - Docker Machine   |  |
|  - Docker Swarm   | X |
| **Cloud Development** |  |
|  - AWS CLI   |  |
|  - Terraform   | X |
|  - Ansible   | X |
| **Time-Saving Shell Scripts** |  |
|  - Git Shortcuts   |  |
|  - Docker Shortcuts   | X |

------

# High-Level Overview & Developer Workflow

Before diving into too many details, let's take a look at the big picture 

## Dev Environment Overview

* Your dev environment will be a virtual machine (VM) running on VirtualBox and managed by Vagrant.
* From your local machine, you ssh into the dev VM, where all of your favorite tools are set up and pre-configured.
* Typically, you code and develop in your favorite IDE on your local machine. And you compile, build, and run your applications in your dev envrionment VM.
* To support this, there are 2 things that are shared between the local host machine and the dev environment VM:
  - Shared / synced folders 
  - Ports
  
## Standard synced folders

Files in these folders will be synced between the local host machine and the dev env VM.  changes made on the host machine are immediately reflected in the VM and vice-versa.
 
| Folder Name | Description | Default Folder path on host machine | Override Env Variable | Folder path on dev env VM | Override Env Variable |
| ------ | ----------- | ----------- | ----------- |

------

# Setting up and Configuring

## One-Time Set Up for brand new machine

### Overview
The steps to get all this dev environment goodness are simple:

1. Install Vagrant
2. Clone this github repo
3. "vagrant up" - &nbsp;   *creates a new VM and provisions it with all of the tools mentioned above*.
4. Customize your host machine
5. Customize your dev VM

### 1 - Install Vagrant

There are plenty of resources on the web to walk you through installing Vagrant for your operation system.  Here are some good ones:
	
* [Official Vagrant Install Docs](https://www.vagrantup.com/docs/installation/ "From the horses mouth")
* [Our good friend, Google](https://www.google.com/#q=install+vagrant)

### 2 - Clone this github repo

```
git clone https://github.com/pentaho-jrice/pentaho-dev-env.git
```
### 3 - Start Dev Environment VM - "Vagrant Up"

```
cd <local-git-project-repo>/dev-env/vagrant
vagrant up
```

Get some coffe, read a newspaper, do you taxes, finish that great American novel you're working on.

For first time set-up, this might take a while.  

5 - 10 minutes average. 15 - 20 minutes is not unheard of, especially over a slow internet connection.

### 4 - Customize your host machine


