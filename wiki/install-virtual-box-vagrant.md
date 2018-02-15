# Install VirtualBox and Vagrant

You will need to install both Vagrant and VirtualBox if you do not already have them.

Installation for both are pretty simple.  Download the installer for your OS.  Run the installer.  Follow directions and choose defaults. 

Resources are below.

## Virtual Box

* [Downloads](https://www.virtualbox.org/wiki/Downloads)
* [Installation Guide](https://www.virtualbox.org/manual/ch01.html#intro-installing) 

## Vagrant

* [Downloads](https://www.vagrantup.com/downloads.html)
* [Installation Guide](https://www.vagrantup.com/docs/installation/)

After you install Vagrant, you'll need to do a 1-time install of vb-guest vagrant plugin.  
This will make sure your files stay in sync between desktop and VM

```
cd <path-to-local-repo/vagrant

vagrant plugin install vagrant-vbguest`
```
[Back to Getting Started](getting-started.md)
