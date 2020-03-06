# Check root permission
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

# Change the apt source

bash ./change-ubuntu-mirror.sh -k


apt update && apt upgrade -y
apt-get install -y build-essential cmake git vim htop python-pip python3-pip build-essential vim-nox ibus-gtk ibus-gtk3 tmux wireshark openssh-client openssh-server virtualenv vsftpd xclip
apt-get install -y blueman pavucontrol
apt-get install -y aria2

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .bashrc ~
cp .vimrc ~


vim +PluginInstall +qall
~/.vim/bundle/youcompleteme/install.sh

# Tmux
cp .tmux.conf ~

