### UTILITY ###
setopt auto_pushd
# Emit "maybe" when the command name you are typing is wrong
setopt correct

### LANGUAGE ###
# enable to print 8bit which contains Japanese characters
setopt print_eight_bit

### PROMPT ###
# make variable references in PROMPT variables expandable
setopt PROMPT_SUBST

### HISTORY ###
# Do not add the same command to the history as the previous one
setopt hist_ignore_dups
# For duplicate commands, delete the older one
setopt hist_ignore_all_dups
# History can be edited once between invocation and execution
setopt hist_verify
# Fill in any extra spaces and record them
setopt hist_reduce_blanks
# The history command does not register to the history
setopt hist_no_store
# Ignore the same old commands
setopt hist_save_no_dups
# Add history incrementally
setopt inc_append_history
# Share command history in different windows
setopt share_history
# Expire a duplicate event first when trimming history.
setopt hist_expire_dups_first
# Remove functions from history list
setopt hist_no_functions
# Record start and end time to history file
setopt extended_history
# Append to history file
setopt append_history

### No Beep ###
# No beeping
setopt no_beep
# No list beeping
setopt no_list_beep
# No history beeping
setopt no_hist_beep
