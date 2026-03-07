# dotfile

This dotfile only supports Mac now.

## Pre-requirement(manualy)

1. Install [Homebrew](https://brew.sh/ja/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. Install [git](https://brew.sh/ja/): `brew install git`
1. Install [chezmoi](https://www.chezmoi.io/): `brew install chezmoi`

## Installation

1. Confirm this repository path from github
1. Initialize chezmoi with this repository: `chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git`
  - By default, chezmoi will guess the full git repo URL, using HTTPS.
  - [If you would like to initialize with SSH, please use SSH flag](https://www.chezmoi.io/reference/commands/init/)
1. Check what changes that chezmoi will make to your home directory by running: `chezmoi diff`
1. Apply changes: `chezmoi apply -v`
1. Install the packages listed in ~/.Brewfile: `brew bundle --global`
1. Install [laztvim](https://www.lazyvim.org/) manually: [LazyVim Starter](https://www.lazyvim.org/installation)

## How to manage dotfiles

### Add new dotfile to manage

1. Create dotfile on home directory manually
1. Manage your dotfile with chezmoi: `chezmoi add $HOME/$FILE`
1. Confirm difference between chezmoi working directories and home directory
  - `chezmoi status`
  - `chezmoi diff`
1. Move git directory which is managed by chezmoi: `chezmoi cd`
1. Update dotfiles local repository
  - `git status`
  - `git add`
  - `git commit`
1. Update dotfiles remote repository
  - `git push origin -u main`

### Update Brewfile

1. Add or delete or update the application by homebrew manually
1. Check your system for potential problems which are managed by homebrew before export:  `brew doctor`
1. Update local .Brewfile by dump: `brew bundle dump --global --force`
1. Update dot_Brewfile which is managed by chezmoi: `brew re-add $HOME/.Brewfile`
  - It is same: Copy from home directories .Brewfile to chezmoi working directories
  - `cp $HOME/.Brewfile $HOME/.local/share/chezmoi/dot_Brewfile`
1. Confirm difference between chezmoi working directories and home directory
  - `chezmoi status`
  - `chezmoi diff`
1. Move git directory which is managed by chezmoi: `chezmoi cd`
3. Update dotfiles local repository
  - `git status`
  - `git add`
  - `git commit`
4. Update dotfiles remote repository
  - `git push origin -u main`
