# NOTE: fzf setting
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NOTE: set fpath before compinit
fpath=( \
	~/.zsh/plugins/zsh-completions/src \
	~/.zsh/plugins/downloads \
	$fpath \
	)

### autoload ###
autoload bashcompinit && bashcompinit
# To activate color
autoload -Uz colors && colors
# zsh-completion
# To activate these completions, add the following to your .zshrc:
autoload -Uz compinit && compinit -u
# You may also need to force rebuild `zcompdump`:
# rm -f ~/.zcompdump; compinit
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
# chmod -R go-w '/usr/local/share/zsh'
complete -C '/usr/local/bin/aws_completer' aws

### load zsh files ###
ZSHHOME="${PWD}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a \
	-x $ZSHHOME ]; then
	for i in $ZSHHOME/*; do
		[[ ${i##*/} = *.zsh ]] &&
		[ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi
