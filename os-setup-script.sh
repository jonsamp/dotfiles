#!/usr/bin/env bash

# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update


PACKAGES=(
    git
    starship
    docker
    mas
)
echo "Installing packages..."
brew install ${PACKAGES[@]}

# link readline
brew link --force readline

echo "Cleaning up..."
brew cleanup

echo "Configuring OS..."

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable three finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

echo "Installing aplications with HomeBrew..."

declare -a HOMEBREW_APPS=(
    "iterm2"
    "slack"
    "spotify"
    "visual-studio-code"
    "1password"
    "daisydisk"
    "discord"
    "figma"
    "google-chrome"
    "firefox"
    "imageoptim"
    "kap"
    "pastebot"
    "notion"
    "avibrazil-rdm"
    "responsively"
    "zoomus"
    "android-studio"
    "docker"
    "rectangle"
    "homebrew/cask-drivers/sonos"
)

for val in "${HOMEBREW_APPS[@]}"; do
  echo "Installing ${val}"
  brew cask install ${val}
done

echo "Install Mac App Store apps"

# Sign in to Mac App Store
mas signin sampjon@gmail.com

# Get new apps with: mas search  ...

declare -a APP_STORE_APPLICATIONS=(
    "409203825"  # Numbers (6.2.1)
    "1333542190" # 1Password 7 (7.4.1)
    "1254981365" # Contrast (1.2.2)
    "497799835"  # Xcode (11.3.1)
    "1303222628" # Paprika Recipe Manager 3 (3.4.3)
    "1091189122" # Bear (1.7.8)
    "1450874784" # Transporter (1.1)
    "1384080005" # Tweetbot (3.3.3)
    "1384080005" # Tweetbot 3 for Twitter
    "405399194"  # Kindle
    "1529448980" # Reeder 5
    "1410709951" # Smart Countdown Timer
    "409203825"  # Numbers
)

for val in "${REMAINING_APPS[@]}"; do
  echo "Installing ${val}"
  mas install ${val}
done


echo "✅ Completed OS Setup."
echo ""
echo "Apps left to download:"
echo ""

declare -a REMAINING_APPS=(
    'ScreenFlow v6: http://www.telestream.net/download-files/screenflow/6-2/ScreenFlow-6.2.4.dmg'
    'Alfred 3: https://cachefly.alfredapp.com/Alfred_3.8.6_972.dmg'
)

for val in "${REMAINING_APPS[@]}"; do
  echo $val
done
