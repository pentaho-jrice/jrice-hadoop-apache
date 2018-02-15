# Customize Your Environment

Before firing up the VM for the first time, it would be helpful to customize a few things for your specific setup.

This project tries to work with your current dev workflow and setup and not force any 1 way of doing things.

At the same time, it tries to keep things consistent inside the VM to have sharable scripts that work for everyone.

Without getting into all the details now, here's a few things to customize.  Full details can be found [here](../vagrant/README.md)

## What can you Customize?

You can customize a few things.  But the most important right now are synced folders.  These are folders that are shared between your host desktop and your VM.  

This project defines a few standard synced folders. You can point them to your existing directories

## How do you customize?

Through environment variables.  

Each synced folder has a default location it will sync to on your machine (under <user-home-dir>/dev-env).  

You can override any one of them by setting an environment variable.  You only need to set environment variable overrides for the ones you care about.

## What are they?

Primary

| Env Var Name | Description  |  Default Value   |
| ------------ | -----------  | ---------------  |
| PENT_DEV_ENV_LOCAL_GIT_PROJECTS_DIR | Root directory of local pentaho git repo.  Suggested to point to the directory that has your current git projects so they are synced.              | ~/dev-env/pentaho/git/ |
| PENT_DEV_ENV_LOCAL_MAVEN_CONF_DIR | The direcotory of your current $MAVEN_HOME/conf directory.  This is so you can share your maven configs / credentials inside VM.              | ~/dev-env/pentaho/maven/conf |
| PENT_DEV_ENV_LOCAL_MAVEN_REPO_DIR | The directory of your local maven repo.  So, when your VM runs maven, it can pick up on the files you already downloaded.              | ~/.m2 |
| PENT_DEV_ENV_LOCAL_AWS_DIR | The directory of your AWS credentials and configs.  Usually "~/.aws".  So you can use your current aws credentials inside VM and keep them in sync.              | ~/.aws     |
| PENT_DEV_ENV_LOCAL_AWS_KEY_FILE_DIR | Directory where you store your public and private keys.  So you can ssh into AWS instances without copying ur credentials inside the VM              | ~/dev-env/pentaho/aws-keys |
| PENT_DEV_ENV_LOCAL_PENTAHO_PDI_HOME | The directory where you keep dev builds of PDI.              | ~/dev-env/pentaho/pdi |
| PENT_DEV_ENV_LOCAL_PENTAHO_AEL_HOME | The directory where you keep your dev builds of AEL              | ~/dev-env/pentaho/ael |
| PENT_DEV_ENV_LOCAL_PENTAHO_SERVER_HOME | The directory where you keep your dev builds of Pentaho Server              | ~/dev-env/pentaho/server |

Secondary

| Env Var Name | Description  |  Default Value   |
| ------------ | -----------  | ---------------  |
| PENT_DEV_ENV_LOCAL_PENTAHO_USER_DIR | XXX              | XXX |
| PENT_DEV_ENV_LOCAL_APPS_DIR | XXX              | XXX |
| PENT_DEV_ENV_LOCAL_SHARE_DIR | XXX              | XXX |
| PENT_DEV_ENV_LOCAL_USER_SCRIPT_DIR | XXX              | XXX |
[Back to Getting Started](getting-started.md)
