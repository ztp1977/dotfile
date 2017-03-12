# 必要なファイルをlink
SDIR=$(pwd $(dirname "$0"))

# 必要なソフトをinstall
sudo curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo
sudo yum -y install neovim
sudo yum -y install tmux

# copy
cp $SDIR/linux.zshrc ~/.zshrc
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
