sudo apt update
sudo apt install git curl firefox neovim

git config --global user.name "mashebang"
git config --global user.email "mashebangisok@gmail.com"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/mashebang/dotfiles

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

cp ~/dotfiles/.alias ~/

cat ~/dotfiles/.bashrc >> ~/.bashrc

cp ~/dotfiles/.config/nvim ~/.config

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source ~/.bashrc

