#!/usr/bin/env bash

# cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
	echo ""
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;

	#install brew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	#xcode utils
	xcode-select --install

	# source brew.sh
	# source jari-osx-apps.sh
	# source jari-npm.sh
	source jari-shell.sh
	# source jari-osx-settings.sh

	echo "Install script done."
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
