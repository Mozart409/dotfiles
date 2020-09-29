#!/bin/bash
echo "Hello, install packages now!"
echo " "
sudo apt-get update
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update
sudo apt-get --assume-yes install curl git zsh gnome-tweaks github-desktop
sudo snap install code --classic
sudo snap install vlc
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
cargo install alacritty
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o ~/.zshrc https://github.com/Mozart409/dotfiles/blob/master/.zshrc
