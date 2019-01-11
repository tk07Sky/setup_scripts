#!/bin/sh

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install gui applications
brew cask install docker
brew cask install vagrant
brew cask install virtualbox
brew cask install sourcetree
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install sequel-pro

# install cui applications
brew install mas

# install AppStore apps
mas install 497799835 # Xcode
mas install 803453959 # Slack

# create ssh key
if [ ! -e ~/.ssh/diffeasy ]; then
	ssh-keygen -t rsa -b 4096 -f ~/.ssh/diffeasy
fi
pbcopy < ~/.ssh/diffeasy.pub

# create work directory
if [ ! -e ~/diffeasy ]; then
	mkdir ~/diffeasy
fi

