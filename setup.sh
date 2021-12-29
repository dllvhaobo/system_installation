#!/bin/bash


curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null

echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt install neovim powerline fonts-powerline \
    vim-airline zsh-theme-powerlevel9k powerline-gitstatus \
    python3-powerline-gitstatus powerline-gitstatus yarn
    python3-powerline-gitstatus nodejs ruby-dev python3-pip exuberant-ctags clangd exuberant-ctags


git clone  https://github.com/dllvhaobo/my_neovim.git ~/.config/nvim

sudo gem install neovim
sudo npm install -g neovim

pip3 install pynvim
pip3 install pygments

# https://github.com/universal-ctags/ctags
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make & make install

