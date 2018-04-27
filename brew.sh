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


# Git
brew install git
brew install git-flow
brew install git-extras


# Java Install
brew cask install java


# node setup
brew install node

# python setup
brew install python
brew install python3


# Go setup
brew install go



# Install Heroku
brew install heroku-toolbelt
heroku update

# Remove outdated versions from the cellar.
brew cleanup



