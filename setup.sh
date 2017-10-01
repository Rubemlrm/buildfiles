CWD=`pwd`

#Create base structure
echo "Creating base strucure"
mkdir -p ~/bin
mkdir -p ~/.config/{zsh,tmux}/configs

echo "cloning needed packages"
echo "Cloning urxvt perl extensions"
if [ ! -e ~/.urxvt/ext ]; then
    mkdir -p ~/.urxvt/ext
    git clone git@github.com:michaeltraxler/urxvt-perls.git ~/.urxvt/ext
fi

echo "cloning oh-my-zsh"
if [ ! -e ~/.config/zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ln -f -s $CWD/configs/zsh/zshrc ~/.zshrc
fi
if [ ! -e ~/.config/zsh/ ]; then
    ln -s $CWD/configs/zsh/configs ~/.config/zsh
    touch ~/.config/zsh/development.zsh
fi


echo "creating symlinks"
if [ ! -e ~/.vimrc ]; then
    ln -s -f $CWD/configs/vim/vimrc ~/.vimrc
fi

if [ ! -e ~/.vim ]; then
    ln -s -f $CWD/configs/vim/vim ~/.vim
fi

if [ ! -e ~/.Xdefaults ]; then
    ln -s -f $CWD/configs/Xsutff/Xdefaults ~/.Xdefaults
fi

if [ ! -e ~/.tmux.conf ]; then
    ln -s -f $CWD/configs/tmux/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.config/tmux ]; then
    ln -f -s $CWD/configs/tmux/configs ~/.config/tmux
fi

