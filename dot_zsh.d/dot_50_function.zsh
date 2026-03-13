### Custom functions ###
# Prevent from conserving failed history
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
zshaddhistory() {
    [[ "$?" == 0 ]]
}

# For completions to work, the above line must be added after compinit is called.
init_zoxide() {
  # For completions to work, the above line must be added after compinit is called.
  if type zoxide > /dev/null 2>&1; then
    eval "$(zoxide init zsh)"
  fi
}
