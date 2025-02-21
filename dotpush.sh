#!/bin/bash

dotpush () {
	if [ -z "$1" ]; then
		echo "Usage: dotpush /path/to/dotfile [commit_message]"
		return 1
	fi
	
	chezmoi add "$1" 
	cd ~/.local/share/chezmoi
	git add .
	if [ -z "$2" ]; then
		git commit -m "Update dotfiles"
	else
		git commit -m "$2"
	fi
	git push origin main
	cd ~
}
