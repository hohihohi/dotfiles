# 40. Apply autoload settings which are managed by .20_autoload.zsh. Mainly apply 'compinit'

# Enable to use colors on terminal
colors
# Enable to use completion
# Specify the zcompdump directory name explicitly. This is because the cache-path is specified explicitly in zstyle.
# The aim is to standardise the storage location for zcompdump.
compinit -d ~/.cache/zsh/zcompdump
