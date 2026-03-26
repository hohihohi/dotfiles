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
# Set up zellij
# Test if you're already in zellij on this session
if [[ -z "$ZELLIJ_SESSION_NAME" ]]; then
    # Check whether the sessions are exists or not
    if zellij list-sessions --short --no-formatting > /dev/null 2>&1; then
        # If single session is exist, Attach the session automatically
        local ZJ_SESSION_NUM=$(zellij list-sessions --short --no-formatting | wc -l | xargs)
        if [ "${ZJ_SESSION_NUM}" = 1 ]; then
            local ZJ_SESSION=$(zellij list-sessions --short --no-formatting)
            zellij attach "${ZJ_SESSION}"
        # If multiple sessions are exist, user attach the session manually
        else
            echo "There are multiple zellij sessions. Please check the sessions and attach."
        fi
    else
        # If no session exists, attach the default session automatically
        local ZJ_DEFAULT_SESSION_NAME="default"
        zellij attach --create "${ZJ_DEFAULT_SESSION_NAME}"
    fi
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
