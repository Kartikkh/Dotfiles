#!/usr/bin/env bash


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


# Node setup
echo ""
echo "------------------------------"
echo "Installing Node.JS"
echo "------------------------------"
echo ""
brew install node
npm install -g npm

# Npm Module

echo ""
echo "------------------------------"
echo "Installing Node Modules "
echo "------------------------------"
echo ""


npm i async
npm i express
npm i nodemon
npm i mongoose
npm i mongodb
npm i express-validator
npm i cors
npm i body-parser
npm i bcrypt
npm i helmet

# node testing

echo ""
echo "------------------------------"
echo "Setting Testing environment from Node.js Applications"
echo "------------------------------"
echo ""

npm i chai
npm i mocha











