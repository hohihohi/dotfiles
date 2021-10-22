# NOTE: fzf setting
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NOTE: set fpath before compinit
fpath=( \
	~/.zsh/plugins/zsh-completions/src \
	~/.zsh/plugins/downloads \
	$fpath \
	)

### git-completion ###
if [ -f ${HOME}/.zsh/plugins/downloads/git-completion.bash ]; then
	zstyle ':completion:*:*:git:*' script ~/.zsh/plugins/downloads/git-completion.bash
fi

### autoload ###
autoload -U +X bashcompinit && bashcompinit
# To activate color
autoload -Uz colors && colors
# zsh-completion
# To activate these completions, add the following to your .zshrc:
autoload -Uz compinit && compinit -ui

# You may also need to force rebuild `zcompdump`:
# rm -f ~/.zcompdump; compinit
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
# chmod -R go-w '/usr/local/share/zsh'
complete -C '/usr/local/bin/aws_completer' aws

### load zsh files ###
ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
	for i in $ZSHHOME/*; do
		[[ ${i##*/} = *.zsh ]] &&
		[ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi

### other tool ###
complete -o nospace -C /usr/local/Cellar/tfenv/2.2.2/versions/1.0.0/terraform terraform

### language version management ###
# gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
