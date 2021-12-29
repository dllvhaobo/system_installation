# Ubuntu Installation

## Update APT source file

```bash
sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list 
```

## Export Proxy 

```bash
export http_proxy=http://x.x.x.x:xxxx
export https_proxy=http://x.x.x.x:xxxx
```

## ZSH

```bash
sudo apt update; sudo apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel9k
cp zshrc ~/.zshrc
chsh -s /usr/bin/zsh
```

## Docker 

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update; sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update;sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER

```

## NVIM

```bash
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update ;sudo apt-get install yarn

sudo apt install neovim powerline fonts-powerline yarn  vim-airline zsh-theme-powerlevel9k powerline-gitstatus python3-powerline-gitstatus powerline-gitstatus python3-powerline-gitstatus nodejs ruby-dev python3-pip exuberant-ctags clangd exuberant-ctags ninja-build gettext libtool libtool-bin autoconf cmake g++ pkg-config unzip fzf ripgrep

sudo gem install neovim
sudo npm install -g neovim
sudo npm install -g  bash-language-server
pip3 install pynvim
pip3 install pygments
                                                                                                                                                                                  
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make & make install

## TMUX

```bash
apt install -y tmux
cp tmux ~/.tmux.conf
```
