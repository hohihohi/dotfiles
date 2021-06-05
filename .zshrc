[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NOTE: set fpath before compinit
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)

### zsh-completion ###
# To activate these completions, add the following to your .zshrc:
autoload -Uz compinit
compinit
# You may also need to force rebuild `zcompdump`:
# rm -f ~/.zcompdump; compinit
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
# chmod -R go-w '/usr/local/share/zsh'
