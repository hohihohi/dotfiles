### PATH ###
# default path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# add binaries on home directory
export PATH="$HOME/bin:$PATH"

### LANGUAGE ###
# please confirm 'locale' command
export LANG="en_US.UTF-8"
export LC_COLLATE="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"
export LC_MESSAGES="${LANGUAGE}"
export LC_MONETARY="${LANGUAGE}"
export LC_NUMERIC="${LANGUAGE}"
export LC_TIME="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"

### HISTORY ###
# history file path
export HISTFILE=~/.zsh_history
# history size on memory
export HISTSIZE=1000
# history size on file
export SAVEHIST=100000
