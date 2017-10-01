#Create base structure
echo "Creating base strucure"
mkdir -p ~/bin
mkdir -p ~/.config/{zsh,tmux}/configs

echo "installing base programs"
sudo apt-get install vim-gtk tmux git rsync

echo "cloning needed packages"
echo "Cloning urxvt perl extensions"
if [ ! -e ~/.urxvt/ext ]; then
    mkdir -p ~/.urxvt/ext
fi
git clone git@github.com:michaeltraxler/urxvt-perls.git ~/.urxvt/ext

echo "cloning oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -f -s $CWD/configs/zsh/zshrc ~/.zshrc

if [ ! -e ~/.config/zsh/ ]; then
    ln -s $CWD/configs/zsh/configs ~/.config/zsh
    touch ~/.config/zsh/development.zsh
fi


echo "creating symlinks"
if [ ! -e ~/.vimrc ]; then
    ln -s $CWD/vim/vimrc ~/.vimrc
fi

if [ ! -e ~/.vim ]; then
    ln -s $CWD/vim/vim ~/.vim
fi

if [ ! -e ~/.Xdefaults ]; then
    ln -s $CWD/Xstuff/Xdefaults ~/.Xdefaults
fi

if [ ! -e ~/.tmux.conf ]; then
    ln -s $CWD/tmux/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.config/tmux ]; then
    ln -f t current window-s $CWD/tmux/configs ~/.config/tmux
fi