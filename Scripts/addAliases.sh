#!/bin/bash

# Bash Shell -> ~/.bashrc
# Tcsh Shell -> ~/.tcshrc
# Ksh Shell -> ~/.kshrc
# Zsh Shell -> ~/.zshrc
# Fish Shell -> ~/.fishrc

CONFIG_FILE=~/.bashrc

addAliases()
{ 
echo >> $CONFIG_FILE;
echo "alias ..=\"cd ..\"" >> $CONFIG_FILE;
}


addAliases