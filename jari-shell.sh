# At this point, zsh is already installed trough brew, but not configured for the system

echo "Setting up your shell...."

echo "Adding zsh to shell list..."
sudo bash -c "echo \"/usr/local/bin/zsh\" >> /etc/shells"

case "$SHELL" in
  */zsh) : ;;
  *)
    echo "Changing your shell to zsh ..."
      chsh -s "$(which zsh)"
    ;;
esac

echo "Downloading terminal font..."
wget https://github.com/chrissimpkins/Hack/releases/download/v2.010/Hack-v2_010-ttf.zip
unzip Hack-v2_010-ttf.zip
rm Hack-v2_010-ttf.zip
mv Hack-* $HOME/Library/Fonts

echo "Configuring iTerm..."
# Enable custom directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/iterm2settings"

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"