# At this point, zsh is already installed and added to /etc/shells

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

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "You'll still need to install the Hack font, and apply solarized color theme to iTerm (todo: export these settings)"