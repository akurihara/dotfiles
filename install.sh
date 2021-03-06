#!/usr/bin/env bash

# Get current directory (so this script can be run from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up symlinks

ln -sv "$DOTFILES_DIR/.bash_profile" ~
ln -sv "$DOTFILES_DIR/.vimrc" ~
ln -sv "$DOTFILES_DIR/.gitconfig" ~
ln -sv "$DOTFILES_DIR/tomorrow_night.vim" ~/.vim/colors

# Package managers and packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/pip.sh"
. "$DOTFILES_DIR/install/macosdefaults.sh"

# Install Vundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
