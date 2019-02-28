#!/bin/sh

echo 'start install...'

# install nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(nodenv init -)"' >> ~/.bash_profile
source .bash_profile
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build

echo 'finished!'
