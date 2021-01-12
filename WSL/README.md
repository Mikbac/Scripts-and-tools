# WSL mode
```wsl.exe -l -v```

# upgrade existing Linux distro to v2
```wsl.exe --set-version (distro name) 2```

# set v2 as the default version
```wsl.exe --set-default-version 2```

# hypervisor launch type
```bcdedit /set hypervisorlaunchtype auto``` <- fixes a bug with Ubuntu installation

```bcdedit /set hypervisorlaunchtype off```
