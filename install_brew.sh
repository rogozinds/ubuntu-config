brew install meld
brew install node
brew install make
brew install cmake
brew install tmux
brew install jq

# Install Postgresql
brew install postgresql

# Install aws-cli
brew install awscli

# Install aws-cdk
npm install -g aws-cdk

# Install oh-my-zsh
if [ ! -d "$ZSH" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install programming software
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install 16

# Install PyCharm, Postman, and Slack (using Homebrew Cask)
brew install --cask pycharm
brew install --cask postman
brew install --cask slack

# Install DBeaver
brew install --cask dbeaver-community

# Set up meld as the default mergetool in git
git config --global merge.tool meld

# Set zsh as the default shell
chsh -s $(which zsh)

# Copy your custom vim and zsh config files
cp ./vim/.vimrc ~/.vimrc
cp ./zsh/.zshrc ~/.zshrc

# oh-my-zsh config
# Install powerlevel10k theme
mkdir -p ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ~/.fonts

# Rebuild font cache
fc-cache -f -v

# Clone powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# Configure Vim plugin
ln -s ~/.vimrc ~/.ideavimrc

# Apply changes and restart zsh
exec zsh

# Logout/Login if necessary
echo "Setup complete! Please restart your terminal to apply all changes."
