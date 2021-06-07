### AUTOMATION ###
# Show completion suggestions in tabs
setopt auto_menu
# When cd is executed, it is pushed to the directory stack
setopt auto_pushd
# When there are multiple candidates for completion, list them
setopt auto_list
# Automatically completes parenthesis correspondence, etc
setopt auto_param_keys
# Automatically append / to the end of directory name completion
setopt auto_param_slash

### UTILITY ###
# Emit "maybe" when the command name you are typing is wrong
setopt correct
# Check spell all
setopt correct_all
# `=command` equals `which command`
setopt equals
# Consider # and after as comments even on the command line
setopt interactive_comments
# Notify me when a background job is finished
setopt notify

### DISPLAY ###
# enable to print 8bit which contains Japanese characters
setopt print_eight_bit
# Show file type as a candidate (ls -F)
setopt list_types
# Pack the completion results as much as possible
setopt list_packed

### PROMPT ###
# make variable references in PROMPT variables expandable
setopt prompt_subst

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
