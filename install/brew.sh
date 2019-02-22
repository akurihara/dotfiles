# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Use Homebrew to install command line applications.
brew install git
brew install python
brew install the_silver_searcher
brew install tmux
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper

# Install Python versions
pyenv install 2.7.15
pyenv install 3.7.2

# Install Homebrew Cask
brew tap caskroom/cask
brew tap caskroom/versions

# Use Homebrew Cask to install GUI applications.
brew cask install iterm2
brew cask install google-chrome
brew cask install spotify
brew cask install vlc
brew cask install slack
brew cask install spectacle
brew cask install avast
