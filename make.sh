#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles
# in this folder

dir=~/src/dotfiles                    # dotfiles directory
olddir=~/Desktop/dotfiles-old             # old dotfiles backup directory
files="vimrc bash_profile tmux.conf gitconfig gitignore_global Rprofile zshrc latexmkrc"    # list of files/folders to symlink in homedir

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
