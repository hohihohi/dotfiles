#### Alias ####
# https://github.com/rothgar/mastering-zsh/blob/master/docs/helpers/aliases.md

### CORE ###
alias ..='cd ..'
alias ll='eza -la --git' # Show hidden all files
alias lr='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' # Read all files on pwd
alias trec='eza --tree' # Show files and directories as tree
alias ripgrep='rg --hidden --no-ignore' # ripgrep=rg

### GIT ###
alias gd='git diff --name-only --relative --diff-filter=d -z | xargs -0 bat --diff' # Show rich git diff

### MAC ###
alias fopen='open ./' # Open current directory by finder
alias ccp='pwd | pbcopy' # Copy current path
alias sed='gsed'

### zellij ###
alias zel-a='zellij attach -l default -c' # specify name and start its session even if non-exist
alias zel-rp='zellij action rename-pane' # specify name and rename pane
