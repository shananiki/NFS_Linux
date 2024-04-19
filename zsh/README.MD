sudo apt install zsh

chsh -s $(which zsh)
relog
echo $SHELL should be /bin/zsh

oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
