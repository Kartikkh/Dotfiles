#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

echo ""
echo "------------------------------"
echo "Installing Git"
echo "------------------------------"
echo ""

# Git
brew install git
brew install git-flow
brew install git-extras


# Install Bash 4.
brew install bash
brew tap homebrew/versions
brew install bash-completion2



# Java Install
echo ""
echo "------------------------------"
echo "Installing Java"
echo "------------------------------"
echo ""
brew cask install java


# node setup
echo ""
echo "------------------------------"
echo "Installing Node"
echo "------------------------------"
echo ""
brew install node

# python setup
echo ""
echo "------------------------------"
echo "Installing Python "
echo "------------------------------"
echo ""
brew install python
brew install python3


echo ""
echo "------------------------------"
echo "Installing Go"
echo "------------------------------"
echo ""
# Go setup
brew install go


echo ""
echo "------------------------------"
echo "Installing Heroku"
echo "------------------------------"
echo ""
# Install Heroku
brew install heroku-toolbelt
heroku update


# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack


# Development tool casks
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" atom

# Remove outdated versions from the cellar.
brew cleanup



