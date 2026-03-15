# 80. Overwrite after loading the plugin because of replacing unintended bindkeys and zstyles.

# Call key-bind function which is defined on ~/.zsh.d/.60_keybind.zsh
apply_keybindings
# Apply zoxiade completions after compinit called
init_zoxide
# Overwrite PROMPT env val to use line break because starship plugin overwrite this env val on zshenv
export PROMPT="${PROMPT}"$'\n'
