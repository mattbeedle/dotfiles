#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    ln -sfn ~/.dotfiles/homebrew/Brewfile.osx ~/.Brewfile
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    sudo apt-get install -y build-essential gcc ruby zlib1g-dev libxslt1-dev

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

    ln -sfn ~/.dotfiles/homebrew/Brewfile.linux ~/.Brewfile
  fi
fi


brew update
brew tap homebrew/bundle
brew bundle --global

exit 0
