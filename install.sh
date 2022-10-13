#Install OS dependencies
sudo apt-get update
sudo apt-get install -y python3-pip python3-tk python3-dev
sudo apt-get install -y vim
sudo  apt-get install -y git
sudo apt-get install curl


#Install programming software
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install node
sudo snap install pycharm-community --classic
sudo snap install postman

## Install postgresql
echo "Installing Postgresql"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

## Installing DBeaver
sudo snap install dbeaver-ce

## Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Set zsh default
chsh -s $(which zsh)
#Copy config


