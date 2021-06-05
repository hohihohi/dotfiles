### PATH ###
# default path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# add binaries on home directory
export PATH="$HOME/bin:$PATH"

### LANGUAGE ###
# please confirm 'locale' command
LANG="en_US.UTF-8"
LC_COLLATE="${LANGUAGE}"
LC_CTYPE="${LANGUAGE}"
LC_MESSAGES="${LANGUAGE}"
LC_MONETARY="${LANGUAGE}"
LC_NUMERIC="${LANGUAGE}"
LC_TIME="${LANGUAGE}"
LC_ALL="${LANGUAGE}"

### HISTORY ###
# history file path
export HISTFILE=~/.zsh_history
# history size on memory
export HISTSIZE=1000
# history size on file
export SAVEHIST=100000
