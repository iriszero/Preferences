sudo apt update && sudo apt upgrade -y

sudo apt-get install -y build-essential cmake git vim htop python-pip python3-pip build-essential vim-nox ibus-gtk ibus-gtk3 tmux wireshark openssh-client openssh-server vsftpd atom xclip

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .bashrc ~
cp .vimrc ~


vim +PluginInstall +qall
~/.vim/bundle/youcompleteme/install.sh

# Tmux
cp .tmux.conf ~

# Atom
apm install --packages-file atom/package-list.txt
