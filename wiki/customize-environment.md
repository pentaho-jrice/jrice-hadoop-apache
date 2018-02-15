# Customize Your Environment

Before firing up the VM for the first time, it would be helpful to customize a few things for your specific setup.

This project tries to work with your current dev workflow and setup and not force any 1 way of doing things.

At the same time, it tries to keep things consistent inside the VM to have sharable scripts that work for everyone.

Without getting into all the details now, here's a few things to customize.  Full details can be found [here](../vagrant/README.md)

## What can you Customize?

Synced folders.  Folders that are shared between your host desktop and your VM.  

This project defines a few standard synced folders. You can point them to your existing directories

## How do you customize?

Through environment variables.  

Each synced folder has a default location it will sync to on your machine (under <user-home-dir>/dev-env).  

You can override any one of them by setting an environment variable.  You only need to set environment variable overrides for the ones you care about.



[Back to Getting Started](getting-started.md)
