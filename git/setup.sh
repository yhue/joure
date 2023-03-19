#!/usr/bin/env bash
set -eux

# save original files
backup=~/.peaberry/backup/$(cat ~/.peaberry/backup/.trace)
mkdir -p ${backup}
[[ -f ~/.gitconfig ]] && mv ~/.gitconfig ${backup}/

# setup git
ln -s ~/.peaberry/.gitconfig ~/.gitconfig
