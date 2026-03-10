### Custom functions ###
# Prevent from conserving failed history
# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
zshaddhistory() {
    [[ "$?" == 0 ]]
}
