# dotfile

This dotfile only supports Mac now.

## Pre-requirement

1. Install [Homebrew](https://brew.sh/ja/)
2. Install [chezmoi](https://www.chezmoi.io/install/)

## Installation

1. Confirm this repository URL
2. Initialize chezmoi with this repository

```
chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git
```

## How to manage dotfiles

### Add new dotfile to manage

1. Create home dotfile manually
2. Enable to manage new dotfile on chezmoi

```
chezmoi add $HOME/$FILE
```

3. Update dotfiles local repository
  - `git status`
  - `git add`
  - `git commit`
4. Update dotfiles remote repository
  - `git push origin -u main`

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
brew bundle dump --global --force
```

4. Copy from home directories .Brewfile to working copy
  - `cp $HOME/.Brewfile $HOME/.local/share/chezmoi/dot_Brewfile`
5. Execute "Modify the dotfile has been managed by chezmoi"


### Modify the dotfile has been managed by chezmoi

1. Edit working copy dotfile
  - Default working copy directory: `~/.local/share/chezmoi`
2. Confirm difference between working copy and the dotfile on home directory

```
chezmoi status
chezmoi diff
```

3. Update home directory dotfile from working copy
  - `chezmoi apply -v`
4. Update dotfiles local repository
  - `git status`
  - `git add`
  - `git commit`
5. Update dotfiles remote repository
  - `git push origin -u main`
