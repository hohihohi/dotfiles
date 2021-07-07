if [ -f ~/.zshrc ]; then
	# zcompdump is cache about complementation for zsh
	rm -f ~/.zcompdump
	source ~/.zsh
	source ~/.zshrc
fi
eval "$(pyenv init --path)"
