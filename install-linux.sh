#!/bin/bash
echo "Hello, installing packages now!"
echo " "
sudo apt-get update
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get --assume-yes install curl git zsh gnome-tweaks github-desktop yarn micro
sudo apt-get install fonts-powerline
sudo snap install code --classic
sudo snap install vlc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl -o ~/.zshrc https://raw.githubusercontent.com/Mozart409/dotfiles/master/.zshrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
nvm install 12
nvm use 12
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
cargo install alacritty
