# 00. The initial minimal setup required

### Activate or Initialize ###
# Set up your shell to use Starship
if type starship > /dev/null 2>&1; then
    eval "$(starship init zsh)"
fi
# Set up brew
if type brew > /dev/null 2>&1; then
    eval "$(brew shellenv)"
fi

### Language management ###
# Automatic Activation: With mise activate,
# mise hooks into your shell prompt and automatically updates your environment
# when you change directories
if type mise > /dev/null 2>&1; then
    # If mise exists
    # updates your environment variable and PATH every time
    # your prompt is run to ensure you use the correct versions
    eval "$(/opt/homebrew/bin/mise activate zsh)" # In your ~/.zshrc
    # NodeJS
    # -- Use node from mise as global
    if ! which node >/dev/null 2>&1; then
        mise use --global node@latest
    fi
    # Python
    # install python from mise if node hasn't installed yet
    if ! which python >/dev/null 2>&1; then
        mise use --global python@latest
    fi
    # go
    # install go from mise if node hasn't installed yet
    if ! which go >/dev/null 2>&1; then
        mise use --global go@latest
    fi
else
    echo "NOT found mise command. please install mise"
fi
