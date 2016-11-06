#variables
export CWD=$(pwd)
export PERLBREW_ROOT=~/bin/perl
export NVM_DIR=~/bin/nvm

mkdir -p ~/bin

echo "cloning needed packages"

echo "Cloning urxvt perl extensions"
if [ ! -e ~/.urxvt/ext ]; then
    mkdir -p ~/.urxvt/ext
fi
git clone git@github.com:michaeltraxler/urxvt-perls.git ~/.urxvt/ext

echo "cloning oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -f -s $CWD/zsh/zshrc ~/.zshrc

if [ ! -e ~/.config/zsh/ ]; then
    ln -s $CWD/zsh/configs ~/.config/zsh
    touch ~/.config/zsh/development
fi

echo "setup rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s -- --path ~/bin/rvm 
cat >> ~/.config/zsh/development << EOM
#rvm
export rvm_path="$HOME"
if [ -e "$HOME/bin/rvm/scripts/rvm" ]; then
    source $HOME/bin/rvm/scripts/rvm
fi

EOM

echo "setup perl"
\curl -L https://install.perlbrew.pl | bash
cat >> ~/.config/zsh/development << EOM
#perlbrew
if [ -e "$HOME/bin/perl/etc/bashrc" ]; then
  source $HOME/bin/perl/etc/bashrc
fi

EOM

echo "setup nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash


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
