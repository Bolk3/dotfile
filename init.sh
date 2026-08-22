#!/bin/bash

set -e

ask() {
	local ANSWER
	while read -rp "$1" ANSWER; do
		case ${ANSWER,,} in
			y|yes)  return 0;;
			n|no)   return 1;;
			*)      echo "not a valid answer";;
		esac
	done
}

if ! command -v stow &> /dev/null; then
	echo "Error: stow is not installed."
	exit 1
fi

if [ -d ~/dotfile ]; then
	echo "dotfile detected"
	if ask ":: Do you want to delete the previous dotfile? (y/n) "; then
		rm -rf ~/dotfile
	else
		exit 1
	fi
fi

if ! git clone git@github.com:Bolk3/dotfile.git ~/dotfile; then
	echo "Clone SSH failed. trying in http"
	if !git clone https://github.com/Bolk3/dotfile.git ~/dotfile; then
		echo "cannot clone repo"
		exit 1
	fi
fi
