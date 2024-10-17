# dotfile

This dotfile only supports Mac now.

## Pre-requirement

1. Install [Homebrew]
1. Install [chezmoi](https://www.chezmoi.io/install/)

## Installation

1. Confirm this repository URL
1. Initialize chezmoi with this repository

```
chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git
```

## How to manage dotfiles

### Install the applications which are managed by homebrew

The following command will install the packages listed in ~/.Brewfile.


```
brew bundle --global
```


### Add/Delete applications by homebrew
1. Add or delete application by homebrew manually
2. Check your system for potential problems which are managed by homebrew

```
brew doctor
```

3. Update .Brewfile by dump

```
brew bundle dump --global
```

4. Execute "Modify the dotfile has been managed by chezmoi"


### Modify the dotfile has been managed by chezmoi

1. Edit the dotfile on home directory
2. Confirm difference between working copy and the dotfile on home directory


```
chezmoi diff
```

3. Update the working directory to match the target state (home directory)


```
chezmoi apply -v
```

4.
