# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string “$HOME/Desktop”

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “png”

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Allow repeated keystrokes instantly
defaults write -g ApplePressAndHoldEnabled -bool false

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
