# 30. Define zstyle
# zstyle handles the obvious style control for the completion system,
# but it seems to cover more than just that.
# eg: the vcs_info module relies on it for display of git status in your prompt.

# Define the zstyles which are refered when initialization.
# So they should be defined before compinit!
apply_zstyles_base() {
  ### Caching / performance
  # Enable completion caching to speed up repeated completion lookups
  zstyle ':completion:*' use-cache true
  # Set the directory where completion cache files are stored
  zstyle ':completion:*' cache-path ~/.cache/zsh

  ### Data sources / contexts
  # Define the search PATH used by sudo completion to find privileged commands
  zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
  # Customize the ps command used to generate the process list for process completion
  zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

  ### Behavior
  # Accept exact matches immediately when the completion result is unambiguous
  zstyle ':completion:*' accept-exact '*(N)'
  # Prioritize tag order for subscript completion (prefer indexes, then parameters)
  zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
  # Control which parent directory entries are ignored during cd completion
  zstyle ':completion:*:cd:*' ignore-parents parent pwd
  # Separate manual page completion results by section
  zstyle ':completion:*:manuals' separate-sections true
}
# Call them before compinit
apply_zstyles_base

# On the other hand, define the zstyles which are often overwriten by plugins
# So they should be applied after all plugins are called: ~/.zsh.d/.80_overwrite.zsh
apply_zstyles_after_plugins() {
  ### UI / presentation
  # Show descriptive text for option completions
  zstyle ':completion:*:options' description 'yes'
  # Customize the format of completion description headers
  zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'
  # Group completion results and allow group names to be displayed/controlled
  zstyle ':completion:*' group-name ''
  # Enable verbose completion listings (show extra details in completion results)
  zstyle ':completion:*' verbose yes
  # Customize the separator shown between completion groups/items in listings
  zstyle ':completion:*' list-separator '-->'
  
  ### Matching
  # Make completion matching case-insensitive by mapping lowercase to uppercase
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

  ### File candidate cleanup
  # Hide unwanted file patterns (object files, backups, editor temp files) from file completion
  zstyle ':completion:*:*files' ignored-patterns '*?.o' '*?~' '*\#'

  ### Colors
  # Apply LS_COLORS as an array for completion list coloring
  [[ -n ${LS_COLORS-} ]] && zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
}
