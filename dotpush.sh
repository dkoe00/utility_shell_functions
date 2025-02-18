dotpush () {
	if [ -z "$1" ]; then
		echo "Usage: dotpush /path/to/dotfile"
		return 1
	fi
	
	chezmoi add "$1" 
	cd ~/.local/share/chezmoi
	git add .
	git commit -m "Update dotfiles"
	git push origin main
	cd ~
}
