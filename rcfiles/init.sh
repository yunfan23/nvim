#!/bin/bash
##################################################
# initialize a new environment
# author: Yunfan
##################################################
declare -a files=("pylintrc" "pdbrc" "pdbrc.py" "bash_user" "tmux.conf")
echo "initializing..."
for file in ${files[@]}
do
  if [ -f "$file" ]; then
    mv ~/.$file ~/.$file.backup
    echo "mv ~/.$file ~/.$file.backup"
  fi
  ln -s ~/.config/nvim/rcfiles/$file ~/.$file
  echo "ln -s ~/.config/nvim/rcfiles/$file ~/.$file"
done
echo "done..."
