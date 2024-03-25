#!/usr/bin/env bash

git clone --bare git@github.com:RobbeDP/dotfiles.git $HOME/.dotfiles

function config {
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# create a directory to backup existing dotfiles to
mkdir -p .dotfiles-backup
config checkout

if [ $? = 0 ]; then
  echo "Checked out dotfiles"
else
  echo "Backing up pre-existing dotfiles to ~/.dotfiles-backup"
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | while read line; do
    mkdir -p .dotfiles-backup/`dirname "$line"`
    mv "$line" .dotfiles-backup/"$line"
  done
fi

# checkout dotfiles from repo
config checkout
config config status.showUntrackedFiles no
