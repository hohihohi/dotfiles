### ghq+fzf ###
function cd_ghq_list() {
	local destination_dir="$(ghq list | fzf)"
	if [ -n "$destination_dir" ]; then
		GHQ_ROOT="$(ghq root)"
		BUFFER="cd $GHQ_ROOT/$destination_dir"
		zle accept-line
	fi
		zle clear-screen
}
zle -N cd_ghq_list
