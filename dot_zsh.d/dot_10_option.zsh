# 10. The zsh option settings
# If you'd confirm the current zsh options, execute 'set -o'.

### Glob ###
# Sort file paths returned by a glob pattern in numerical order
setopt numeric_glob_sort
# Prevents errors when a wildcard (glob) pattern does not match any files
setopt nonomatch

### History ###
# Treat the '!' character specially during expansion.
setopt bang_hist
# Write the history file in the ':start:elapsed;command' format.
setopt extended_history
# Share history between all sessions.
setopt share_history
# Expire a duplicate event first when trimming history.
setopt hist_expire_dups_first
# Do not record an event that was just recorded again.
setopt hist_ignore_dups
# Delete an old recorded event if a new event is a duplicate.
setopt hist_ignore_all_dups
# Do not write a duplicate event to the history file.
setopt hist_save_no_dups
# Do not record an event starting with a space.
setopt hist_ignore_space
# Delete unnecessary spaces
setopt hist_reduce_blanks
# History can be edited once between invocation and execution
setopt hist_verify
# The history command does not register to the history
setopt hist_no_store
# Add history incrementally
setopt inc_append_history
# Remove functions from history list
setopt hist_no_functions
# Append to history file
setopt append_history

### UX ###
# Disable beep
setopt no_beep
# No list beeping
setopt no_list_beep
# No history beeping
setopt no_hist_beep
# Enable word completion at cursor position
setopt complete_in_word
# Disallow overwriting redirection
setopt no_clobber

### AUTOMATION ###
# When cd is executed, it is pushed to the directory stack
setopt auto_pushd
# When there are multiple candidates for completion, list them
setopt auto_list
# Automatically completes parenthesis correspondence, etc
setopt auto_param_keys
# Automatically append / to the end of directory name completion
setopt auto_param_slash
# Disable cd with directory name only
unsetopt auto_cd
# Disable to show completion suggestions in tabs
unsetopt auto_menu

### UTILITY ###
# `=command` equals `which command`
setopt equals
# Treat text after # as comments even on in-line command
setopt interactive_comments
# Notify me when a background job is finished
setopt notify
# Also complete after = in arguments (e.g. --prefix=/usr)
setopt magic_equal_subst
# Make variable references in PROMPT variables expandable
setopt prompt_subst
# Modify comand spell automatically: Conflict AI Agent
unsetopt correct
# Modify all command line spells automatically: Conflict AI Agent
unsetopt correct_all

### DISPLAY ###
# Enable to print 8bit which contains Japanese characters
setopt print_eight_bit
# Show file type as a candidate (ls -F)
setopt list_types
# Make list display compact
setopt list_packed
