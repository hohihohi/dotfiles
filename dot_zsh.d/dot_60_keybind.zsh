# 60. Define the function for zle and bindkey to prevent from overwriting key-bind

# ZLE: Zsh Line Editor
# Within ZLE, there are numerous widgets which are units of operation.
# Examples: backward-char (move left), kill-line (delete line), history-incremental-search-backward, etc...
# Assign ZLE widgets to bindkeys to operate them.
# If you'd like to know detail, execute 'man zshzle'
# If you'd like to confirm zle widget list, execute 'zle -la'
# -N: new-keymap [ old-keymap ]
#     Create a new keymap, named new-keymap. If a keymap already has that name, it is deleted.
#     If an old-keymap name is given, the new keymap is initialized to be a duplicate of it,
#     otherwise the new keymap will be empty.
# zle -N <widget name> <function name> : the function name can be omitted if it shares the same name as the widget

### ZLE ###
# ghq + fzf
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

### key-bind ###
function apply_keybindings() {
  ### MOVE ###
  ## Move to the beginning of the line
  bindkey '^A' beginning-of-line
  # Move to the end of the line
  bindkey '^E' end-of-line
  # Move to the forward character
  bindkey '^F' forward-char
  # Move to the backward character
  bindkey '^B' backward-char
  # Move to the git directories which are managed by ghq
  bindkey '^]' cd_ghq_list

  ### UTIL ###
  # Clear screen
  bindkey '^L' clear-screen
  # Paste the last thing you cut from the clipboard
  bindkey '^Y' yank

  ### Erase ###
  # Erase whole line
  bindkey '^U' kill-whole-line
  # Erase the character at the cursor location
  bindkey '^D' delete-char-or-list
  # Erase the word before the cursor location
  bindkey '^W' backward-kill-word
  # Erase the part of the line after the cursor location
  bindkey '^K' kill-line

  ### HISTORY ###
  # Search for a command in the history
  bindkey '^R' history-incremental-search-backward
  # Go the next command in the history
  bindkey '^N' down-line-or-history
  # Go the previous command in the history
  bindkey '^P' up-line-or-history
}
