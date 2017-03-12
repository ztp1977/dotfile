# 必要なファイルをlink
SDIR=$(pwd $(dirname "$0"))

# 必要なソフトをinstall
sh $SDIR/brew-cask.sh

# copy
cp $SDIR/.zshrc ~/.zshrc
cp $SDIR/../share/gitconfig ~/.gitconfig
cp $SDIR/../share/tmux.conf ~/.tmux.conf
cp $SDIR/../share/gitignore_global ~/.gitignore_global
cp -R $SDIR/../share/.config ~/
cp $SDIR/../share/init.vim ~/.vimrc

# vim
mkdir -p ~/.config/dein
mkdir -p ~/.config/nvim
mkdir -p ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# reload
source ~/.zshrc

# :call dein#install()
