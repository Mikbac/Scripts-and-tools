# Vagrant

# Table of Contents
1. [Basic commands](#basic-commands)
2. [Plugins](#plugins)
3. [Issues](#issues)

## Basic commands
Creates and configures guest machines according to your Vagrantfile
```
vagrant up
```
Vagrant status
```
vagrant status
```
Halt virtual machine
```
vagrant halt
```
Destroy virtual machine
```
vagrant destroy
```
Suspend virtual machine
```
vagrant suspend
```
Resumes a Vagrant managed machine that was previously suspended
```
vagrant resume
```
Connect to the virtual machine
```
vagrant ssh
```
Install plugin
```
vagrant plugin install [plugin_name]
```
Uninstall plugin
```
vagrant plugin uninstall [plugin_name]
```

## Plugins
```
vagrant plugin install vagrant-vbguest
```

## Issues
#### 1.
Issue:
```
Vagrant was unable to mount VirtualBox shared folders. This is usually
because the filesystem "vboxsf" is not available. This filesystem is [...]
```
Solution:
```
vagrant plugin install vagrant-vbguest
vagrant vbgues
vagrant up
```

#### 2. Windows Hyper-V
In PowerShell
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```
