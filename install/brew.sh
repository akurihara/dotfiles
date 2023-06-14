# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# Use Homebrew to install command line applications.

## General
brew install git
brew install docker

## Vim
brew install ctags
brew install the_silver_searcher

## Python
brew install python
brew install pyenv

## Java
brew install jenv
brew install mvn
jenv enable-plugin maven
jenv enable-plugin export
# Needed for projects using Maven Wrapper 
mvn wrapper:wrapper

## Databases
brew install postgresql
brew install redis

# Install python versions
pyenv install 2.7.15
pyenv install 3.7.1

# Install Homebrew Cask
brew tap homebrew/cask
brew tap homebrew/cask-versions

# Use Homebrew Cask to install GUI applications.
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask 1password
brew install --cask spotify
brew install --cask slack
brew install --cask intellij-idea-ce
brew install --cask spectacle
brew install --cask avast-security
brew install --cask authy
brew install --cask postman
brew install --cask psequel
brew install --cask steam
brew install --cask docker
brew install --cask vlc

# Install vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Set up Git completion for zsh
## Create the folder structure
mkdir -p ~/.zsh
cd ~/.zsh
## Download the scripts
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
