#!/bin/bash
echo "Hello, installing packages now!"
echo " "
sudo apt-get update -y
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update
sudo apt install github-desktop -y
sudo apt-get --assume-yes install curl git zsh gnome-tweaks
sudo apt-get install fonts-powerline
sudo snap install code --classic
sudo snap install vlc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/buonomo/yarn-completion ~/.oh-my-zsh/custom/plugins/yarn-completion
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl -o ~/.zshrc https://raw.githubusercontent.com/Mozart409/dotfiles/master/.zshrc
curl -fsSL https://fnm.vercel.app/install | bash
curl https://getmic.ro | bash
