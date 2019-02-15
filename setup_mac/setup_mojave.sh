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
brew install vim
brew install git

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

# vim setting
mkdir -p ~/.vim/bundle
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.vim/bundle
rm installer.sh
git clone https://github.com/Akidsuki/vimrc.git ~/vimrc
mv ~/vimrc/.vimrc ~/
rm -rf ~/vimrc

# vscode plugin install
code --install-extension vuetifyjs.vuetify-vscode
code --install-extension peterjausovec.vscode-docker
code --install-extension eamodio.gitlens
code --install-extension eg2.vscode-npm-script
code --install-extension vscodevim.vim
code --install-extension bung87.rails
code --install-extension 2gua.rainbow-brackets
code --install-extension mechatroner.rainbow-csv
code --install-extension rebornix.ruby
code --install-extension saviorisdead.rustycode
code --install-extension robinbentley.sass-indented
code --install-extension ms-mssql.mssql
code --install-extension octref.vetur
