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

    brew update
    brew bundle
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get dist-upgrade -y
    sudo apt-get install -y build-essential gcc ruby zlib1g-dev libxslt1-dev

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

    ln -sfn ~/.dotfiles/homebrew/Brewfile.linux ~/.Brewfile

    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
    echo 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> ~/.bashrc
    echo 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> ~/.bashrc

    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.zshrc
    echo 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> ~/.zshrc
    echo 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> ~/.zshrc

    . ~/.bashrc

    brew update
    brew bundle

    # We need to install pytz so that we can brew install ansible
    pip install --upgrade pip
    pip install pytz
  fi
fi

brew bundle --global

exit 0
