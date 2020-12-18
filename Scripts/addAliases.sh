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

echo "alias l=\"ls -F\"" >> $CONFIG_FILE;
echo "alias s=\"ls -F\"" >> $CONFIG_FILE;
echo "alias sl=\"ls -F\"" >> $CONFIG_FILE;
echo "alias lls=\"ls -F\"" >> $CONFIG_FILE;
echo "alias lss=\"ls -F\"" >> $CONFIG_FILE;

}


addAliases