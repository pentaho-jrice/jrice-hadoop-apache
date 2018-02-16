# Troubleshooting Guide

**NOTE** - This project is in early alpha stage and being shared for the first time.

If you run into any issues or it does not work as expected, please reach out to me, Joe Rice ([email](joseph.rice@hitachivantara.com), [slack](https://pentaho-engineering.slack.com/messages/D64V59S84))

Would love to hear from you.  We can work through it together.  Or at least document issues / resolutions.

That said, here are a few known things that can go wrong and how to fix

### Memory

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

### 64-Bit Linux not Available on Windows

**Problelm**

If your running windows and HyperV is turned on, VirtualBox can not support 64-bit VMs.  

You will not see 64-bit options in Virtual Box and Vagrant will fail with an error messgae that makes it clear it's 64-bit problem

**Solution**

This is a known and frequent issue.  There are tons of resource that a good friend like Google can tell you about.

But this video does a great job of ahowing step-by-step how to fix:  https://www.youtube.com/watch?v=f8qYmpLzo60

<br>
<br>

[< Getting Started](getting-started.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Getting Started Home](getting-started.md)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [Intall Virtual Box & Vagrant >](install-virtual-box-vagrant.md)

