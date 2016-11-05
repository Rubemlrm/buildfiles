#variables
export CWD=$(pwd)
export PERLBREW_ROOT=~/bin/perl
export NVM_DIR=~/bin/nvm

mkdir -p ~/bin

echo "cloning needed packages"

echo "Cloning urxvt perl extensions"
mkdir -p ~/.urxvt/ext
git clone git@github.com:michaeltraxler/urxvt-perls.git ~/.urxvt/ext

echo "cloning oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -f -s $CWD/zsh/zshrc ~/.zshrc

echo "setup rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s -- --path ~/bin/rvm 
echo "export rvm_path=\"$HOME\"" >> ~/.zshrc
echo "source $HOME/bin/rvm/scripts/rvm" >> ~/.zshrc

echo "setup perl"
\curl -L https://install.perlbrew.pl | bash
echo "source ~/bin/perl/etc/bashrc" >> ~/.zshrc

echo "setup nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
echo "source $NVM_DIR/nvm.sh" >> ~/.zshrc

echo "creating symlinks"
ln -f -s $CWD/vim/vimrc ~/.vimrc
ln -f -s $CWD/vim/vim ~/.vim
ln -f -s $CWD/Xstuff/Xdefaults ~/.Xdefaults
ln -f -s $CWD/tmux/tmux.conf ~/.tmux.conf
ln -f -s $CWD/tmux/configs ~/.config/tmux

