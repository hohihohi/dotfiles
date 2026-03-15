### Custom functions ###
# Prevent from conserving failed history
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
zshaddhistory() {
    [[ "$?" == 0 ]]
}

# Provides the ability to change the current working directory when exiting Yazi.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# For completions to work, the above line must be added after compinit is called.
init_zoxide() {
  # For completions to work, the above line must be added after compinit is called.
  if type zoxide > /dev/null 2>&1; then
    eval "$(zoxide init zsh)"
  fi
}
