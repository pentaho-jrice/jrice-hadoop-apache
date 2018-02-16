# Step 6 - SSH Into VM

If all went well and it did not error out.....

Congratulations.  You now have a VM with a running Hadoop cluster, Docker Swwarm Node, and a bunch of other goodies.

You can now ssh into the VM and start using it.  There are 2 options:

### Option 1 - Vagrant SSH from your host shell


```
cd <path-to-local-forked-git-repo>/vagrant

vagrant ssh
```
### Option 2 - SSH Client / Terminal

```
# Example using "ssh" from linux / Mac bash

ssh localhost -p 2222
```

On Windows, you can use [putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/) or [mobaxterm](https://mobaxterm.mobatek.net/download.html))

### More Infd

* You access your VM using "localhost" as the host name
* By default, the ssh port for vagrant is 2222.  If that is in use, it will try others:  (2200, 2201)
* username / password:  vagrant / vagrant.

<br>
<br>

 [< "vagrant up"](vagrant-up.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Getting Started Home](getting-started.md)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [SSH into your new VM >](ssh-into-vm.md)

