#!/usr/bin/env bash
set -eux

# save original files
orgdir=~/.git.$(date +%s)
mkdir -p ${orgdir}
[[ -f ~/.gitconfig ]] && mv ~/.gitconfig ${orgdir}/

# setup vim
ln -s ~/.peaberry/.gitconfig ~/.gitconfig
