#!/bin/bash
#Install OS dependencies
sudo apt-get update
sudo apt-get install -y python3-pip python3-tk python3-dev
sudo apt-get install -y vim-gtk3
sudo  apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y zsh
sudo apt-get install -y tldr
sudo apt-get install -y fzf
sudo apt-get install -y xclip
sudo apt-get install -y gitk
sudo apt-get install -y meld
sudo apt-get install -y nodejs
##  Install cmake and make
sudo apt-get install -y make
sudo apt-get install -y cmake
##  Install tmux
sudo apt-get install -y tmux

# Configuration
## setup meld as default mergetool
git config --global merge.tool meld
#Install programming software
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install 16
sudo snap install pycharm-community --classic
sudo snap install postman
sudo snap install slack

## Install postgresql
echo "Installing Postgresql"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

## Installing DBeaver
sudo snap install dbeaver-ce

## Installing aws-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

## Installing aws-cdk
npm install -g aws-cdk

## Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Install jq
sudo apt-get install jq
## Set zsh default
chsh -s $(which zsh)

#Copy config
cp ./vim/.vimrc ~/.vimrc
cp ./zsh/.zshrc ~/.zshrc

# oh-my-zsh config
# installing powerlevel10k
mkdir ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ~/.fonts

fc-cache -f -v

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
# Config vimplugin 

ln -s ~/.vimrc ~/.ideavimrc
#RUn zsh to config powerlevel 10.
exex zsh
#Logout/Login
