#!/bin/bash

set -e

ask() {
	while read -p "$1" ANWSER; do
		case ${AWNSER,,} in
			y|yes)	return 1;;
			n|no)	return 0;;
			*)	echo "not a valid awnser";;
		esac
	done
}

if ! command -v stow &> /dev/null; then
	echo "Error: stow is not installed."
	exit 1
fi

if [ -d ~/dotfile ]; then
	echo "dotfile detected"
	if [ask ":: Do you want to delete the previous dotfile" -eq 1]; then
		rm -rf ~/dotfile
	fi
fi
git clone https://github.com/Bolk3/dotfile.git ~/dotfile
