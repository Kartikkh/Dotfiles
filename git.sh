#!/usr/bin/env bash


# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew);
then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

whereis  git
if ["$?" -ne "0"];
then
 echo "Installing Git..."
 brew install git
fi

echo ""
echo "------------------------------"
echo "Git is already Installed ! "
echo "------------------------------"



read -p  'Name: ' Name
git config --global user.name $Name



read -p 'Email: ' Email
git config --global user.email $Email



read -sp 'Password: ' Password
git config --global user.password $Password


git config --list








