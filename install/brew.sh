# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install git
brew install python
brew install the_silver_searcher
brew install tmux


# Install Homebrew Cask
brew tap caskroom/cask
brew tap caskroom/versions

brew cask install iterm2
brew cask install google-chrome
brew cask install spotify
brew cask install vlc
brew cask install slack
brew cask install spectacle
