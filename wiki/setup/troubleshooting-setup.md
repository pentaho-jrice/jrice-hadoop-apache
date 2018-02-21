# Troubleshooting Guide

**NOTE** - This project is in early alpha stage and being shared for the first time.

If you run into any issues or it does not work as expected, please reach out to me, Joe Rice ([email](joseph.rice@hitachivantara.com), [slack](https://pentaho-engineering.slack.com/messages/D64V59S84))

Would love to hear from you.  We can work through it together.  Or at least document issues / resolutions.

That said, here are a few known things that can go wrong and how to fix

### Issue - Memory

**Problem**

By default, the VM is configured to allocate 8GB of memory and 2 cpus.  If your VM runs out of memory or runs show, your machine may not be able to handle that.

**Solution**

reduce the memory allocation to 4GB and 1 cpu.

Open the [Vagratfile](https://github.com/pentaho-jrice/jrice-hadoop-apache/blob/master/vagrant/Vagrantfile) in your repo:
* <path-to-local-forked-git-repo>/vagrant/Vagrantfile

This the snippet you want to change 


```
  config.vm.provider :virtualbox do |vb|
    vb.name = "Pentaho Hadoop Dev Environment"
    vb.customize ["modifyvm", :id, "--memory", "8192"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end
```

### Issue - 64-Bit Linux not Available on Windows

**Problelm**

If your running windows and HyperV is turned on, VirtualBox can not support 64-bit VMs.  

You will not see 64-bit options in Virtual Box and Vagrant will fail with an error messgae that makes it clear it's 64-bit problem

**Solution**

This is a known and frequent issue.  There are tons of resource that a good friend like Google can tell you about.

But this video does a great job of ahowing step-by-step how to fix:  https://www.youtube.com/watch?v=f8qYmpLzo60

<br>
<br>

[< Getting Started](getting-started.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Getting Started Home](getting-started.md)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [Intall Virtual Box & Vagrant >](install-virtual-box-vagrant.md)


### Issue - Errors on "vagrant up" - No Vagrantfile

**Problem**

You type "vagrant up" and get the following error message

```
A Vagrant environment or target machine is required to run this
command. Run `vagrant init` to create a new Vagrant environment. Or,
get an ID of a target machine from `vagrant global-status` to run
this command on. A final option is to change to a directory with a
Vagrantfile and to try again.
```

**Solution**

You need to run "vagrant up" from a directory that has a Vagrant file.  

This project includes a Vagrantfile already configured.  Make sure you are in that directory before "vagrant up"

<path-to-local-forked-git-repo>/**vagrant**

### Issue - Errors on "vagrant up" - VirtualBox Issues

**Problem**

You type "vagrant up" and get the following error message

```
No usable default provider could be found for your system.

Vagrant relies on interactions with 3rd party systems, known as
"providers", to provide Vagrant with resources to run development
environments. Examples are VirtualBox, VMware, Hyper-V.

The easiest solution to this message is to install VirtualBox, which
is available for free on all major platforms.

If you believe you already have a provider available, make sure it
is properly installed and configured. You can see more details about
why a particular provider isn't working by forcing usage with
`vagrant up --provider=PROVIDER`, which should give you a more specific
error message for that particular provider.
```

**Solution**

There are 2 possible causes for this.  VirtualBox is not installed on your local machine.  Or the version of 
VirtualBox is not compatible with the version of Vagrant you have.

1. Make sure Virtual Box is installed on your computer.
2. Type the following command to get a more specific error message:

```
vagrant up --provider=virtualbox
```

In my case, I got this message as a response:

```
The provider 'virtualbox' that was requested to back the machine
'default' is reporting that it isn't usable on this system. The
reason is shown below:

Vagrant has detected that you have a version of VirtualBox installed
that is not supported by this version of Vagrant. Please install one of
the supported versions listed below to use Vagrant:

4.0, 4.1, 4.2, 4.3, 5.0, 5.1

A Vagrant update may also be available that adds support for the version
you specified. Please check www.vagrantup.com/downloads.html to download
the latest version.
```

So, we can see that even though Ih ave VirtualBox installed, the version I have installed is not compatible with Vagrant.  You can either upgrade Vagrant or upgrade VirutualBox (or both).