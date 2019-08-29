echo 'start install...'

# install nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv; src/configure; make -C src
echo 'set -U fish_user_paths $HOME/.nodenv/bin $fish_user_paths' >> ~/.config/fish/config.fish
echo 'eval (nodenv init - | source)' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build

mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/nodenv-update.git "$(nodenv root)"/plugins/nodenv-update

echo 'finished!'
