#!/usr/bin/env bash

# Get current directory (so this script can be run from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks

ln -sv "$DOTFILES_DIR/.bash_profile" ~
ln -sv "$DOTFILES_DIR/.vimrc" ~

# Package managers and packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/pip.sh"
