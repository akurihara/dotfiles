# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Use Homebrew to install command line applications.
brew install neovim
brew install git
brew install git bash-completion
brew install python
brew install the_silver_searcher
brew install tmux
brew install pyenv
brew install pipenv
brew install ctags
brew install postgresql
brew install redis
brew install sqlite
brew install docker

# Install Python versions
pyenv install 2.7.15
pyenv install 3.7.1

# Install Homebrew Cask
brew tap caskroom/cask
brew tap caskroom/versions

# Use Homebrew Cask to install GUI applications.
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask 1password
brew install --cask spotify
brew install --cask slack
brew install --cask intellij-idea-ce
brew install --cask spectacle
brew install --cask avast
brew install --cask authy
brew install --cask sequel-pro
brew install --cask postman
brew install --cask psequel
brew install --cask gfxcardstatus
brew isntall --cask steam
brew install --cask docker
brew install --cask vlc
