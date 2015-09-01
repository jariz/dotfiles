#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# TAPS
brew tap homebrew/versions
brew tap homebrew/dupes
# brew tap josegonzalez/php
brew tap homebrew/php
brew tap bramstein/webfonttools

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp

# Install font tools.
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
# brew install dark-mode
brew install exiv2
brew install git
brew install imagemagick --with-webp


# Jari zone starts here

# frontend life
brew install node

# Update ruby
brew install ruby

# Update/install zsh
brew install zsh

# libs etc
brew install libjpeg
brew install pcre
brew install libxml2
brew install mcrypt
brew install openssl

# PHP
brew install php55
brew install php55-memcache
brew install php55-mcrypt
brew install php55-twig

echo "PHP installed, but still needs apache configuration, more info below under caveats"
brew info php55

# essentials/random utils
brew install mysql
brew install htop-osx
brew install whois

#compasserino
sudo gem install compass

# Remove outdated versions from the cellar.
brew cleanup
