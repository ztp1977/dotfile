#!/bin/sh
# brew install
# visudo

echo export HOMEBREW_CASK_OPTS=\"--appdir=/Applications\" > ~/.bashrc
cd ~
source .bashrc

#brew cask install --force google-chrome
brew cask install --force sequel-pro
#brew cask install --force unity3d
brew cask install --force java
brew cask install --force android-studio
brew cask install --force iterm2
brew cask install --force postico
brew cask install --force docker
#brew cask install --force tableau-reader
#brew cask install --force intellij-idea
brew cask install --force coteditor
brew cask install --force karabiner
brew cask install --force chatwork
brew cask install --force github-desktop
