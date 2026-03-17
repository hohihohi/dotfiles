# 20. Define FPATH and autoload settings(only set autoload but execute loading)

# FPATH (or its array equivalent, fpath) is a special shell parameter
# FPATH defines the list of directories the shell searches for definitions of autoloaded functions,
# including command-line completion scripts
fpath=("$HOME/.zsh.d/completions" $fpath)

# autoload: Load built-in function on $FPATH automatically -> autoload -Uz <func>
# -U: Load ignorely user defined alias
# -z: Load explicitly shell as zsh
## Shell commands are executable simply by being in the PATH
## However, "shell functions" cannot be executed unless they are defined.
## "autoload" is a built-in shell function that automatically loads function definitions present on the filesystem
## "autoload" searches for function definitions in `fpath`.
## Note: "autoload" is ‘loading preparation’, not ‘execution’.
#
# compinit: compinit is a function that initialises Zsh's completion system
autoload -Uz compinit
# vcs_info: vcs_info is built-in function to fetch information from version managemant system(git, svn..)
autoload -Uz vcs_info
# colors: colors can be applied in the prompt using special percent codes,
# or in any shell output (including the prompt) by using the colors built-in function
autoload -Uz colors
