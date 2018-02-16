# Customize Your Environment

Before firing up the VM for the first time, it would be helpful to customize a few things for your specific setup.

You do this by setting environment variables on your local machine. 

For now, set the env vars with &#x1F538; next to it.  You are telling the VM where your git and maven folders are so they can sync  
<br>

| Try it? | Env Var Name | Description  |  Default Value   |
| --- | ------------ | -----------  | ---------------  |
| &#x1F538; | PENT_DEV_ENV_LOCAL_GIT_PROJECTS_DIR   | Root directory of local pentaho git repo.  Suggested to point to the directory that has your current git projects so they are synced.              | ~/dev-env/pentaho/git/ |
| &#x1F538; | PENT_DEV_ENV_LOCAL_MAVEN_CONF_DIR | The direcotory of your current $MAVEN_HOME/conf directory.  This is so you can share your maven configs / credentials inside VM.              | ~/dev-env/pentaho/maven/conf |
| &#x1F538; | PENT_DEV_ENV_LOCAL_MAVEN_REPO_DIR | The directory of your local maven repo.  So, when your VM runs maven, it can pick up on the files you already downloaded.              | ~/.m2 |
| | PENT_DEV_ENV_LOCAL_AWS_DIR | The directory of your AWS credentials and configs.  Usually "~/.aws".  So you can use your current aws credentials inside VM and keep them in sync.              | ~/.aws     |
| | PENT_DEV_ENV_LOCAL_AWS_KEY_FILE_DIR | Directory where you store your public and private keys.  So you can ssh into AWS instances without copying ur credentials inside the VM              | ~/dev-env/pentaho/aws-keys |
| | PENT_DEV_ENV_LOCAL_PENTAHO_PDI_HOME | The directory where you keep dev builds of PDI.              | ~/dev-env/pentaho/pdi |
| | PENT_DEV_ENV_LOCAL_PENTAHO_AEL_HOME | The directory where you keep your dev builds of AEL              | ~/dev-env/pentaho/ael |
| | PENT_DEV_ENV_LOCAL_PENTAHO_SERVER_HOME | The directory where you keep your dev builds of Pentaho Server              | ~/dev-env/pentaho/server |
| | PENT_DEV_ENV_LOCAL_PENTAHO_USER_DIR | The pentaho user directory on your local machine (usually "~/.pentaho".  So you can share your metastores and other saved profile data.             | ~/.pentaho |
| | PENT_DEV_ENV_LOCAL_APPS_DIR | This is a geeneral purpose shared folder where you can share whatever apps you want to share between your local host and VM.                | ~/dev-env/pentaho/apps |
| | PENT_DEV_ENV_LOCAL_SHARE_DIR | Another general purpose share folder to use for whatever purpose you want.  I find it usual to share logs of apps running in VM.  Or to quickly copy files in and out of VM if need me              | ~/dev-env/pentaho/share |
| | PENT_DEV_ENV_LOCAL_USER_SCRIPT_DIR | This user-scripts folder is meant for any custom scripts tailored to your environment.  It is added to the path inside the VM so you can execute from anywhere.              | ~/dev-env/user-scripts |

<br>
<br>

[< Intall Virtual Box & Vagrant](install-virtual-box-vagrant.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Project Home](../README.md)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ["vagrant up" >](vagrant-up.md)

