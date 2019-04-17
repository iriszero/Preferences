sudo apt-get install -y build-essential cmake git vim htop python-pip python3-pip build-essential vim-nox ibus-gtk ibus-gtk3 tmux wireshark
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .bashrc ~
cp .vimrc ~
cp .tmux.conf ~

vim +PluginInstall +qall
~/.vim/bundle/youcompleteme/install.sh

