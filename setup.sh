# Check root permission
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

# Change the apt source
bash ./change-ubuntu-mirror.sh -k

apt update && apt upgrade -y
# Essential
apt-get install -y build-essential cmake git vim htop build-essential vim-nox tmux wireshark openssh-client openssh-server vsftpd xclip tree

# Python
apt-get install -y python-pip python3-pip virtualenv

# Bluetooth
apt-get install -y blueman pavucontrol

# Korean Keyboard
apt-get install -y ibus-gtk ibus-gtk3

# Fast Downloader
apt-get install -y aria2

# Wallpaper
apt-get install -y wallch

# Gnome
apt-get install -y gnome-tweaks gnome-shell-extensions

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .bashrc ~
cp .vimrc ~

vim +PluginInstall +qall
~/.vim/bundle/youcompleteme/install.sh

# Tmux
cp .tmux.conf ~

# Save your git crediental in memory (for 15 mins)
git config --global credential.helper cache
