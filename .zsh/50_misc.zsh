### PROPMT ###
# autoload: Load built-in function on $FPATH automatically
# -U: Load ignorely user defined alias
# -z: Load explicitly shell as zsh
# vcs_info: vcs_info is built-in function to fetch information from version managemant system(git, svn..)
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '!'
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:*' formats ' %c%u(%s:%b)'
zstyle ':vcs_info:*' actionformats ' %c%u(%s:%b|%a)'
precmd () {
	psvar=()
	LANG=en_US.UTF-8 vcs_info
	[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# please see https://qiita.com/yamagen0915/items/77fb78d9c73369c784da
# https://qiita.com/kumatira/items/41562f1d9001927e9888
export PROMPT="%K{magenta}%B%F{white}%n@%k%f%b %B%F{green}❯❯%b%f %K{green}%B%F{white}%1(v|%1v|) %k%f%b %K{cyan}%B%F{white}%~%k%f%b
%B%F{green}❯%f%b $ "
