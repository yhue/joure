#!/usr/bin/env bash
set -eux

# save original files
backup=~/.peaberry/backup/$(cat ~/.peaberry/backup/.trace)
mkdir -p ${backup}
[[ -f ~/.vimrc ]] && mv ~/.vimrc ${backup}/
[[ -f ~/.viminfo ]] && mv ~/.viminfo ${backup}/
[[ -d ~/.vim ]] && mv ~/.vim ${backup}/

# setup vim
[[ -d ~/.vim ]] && rm -rf ~/.vim
ln -s ~/.peaberry/vim ~/.vim
chmod 755 ~/.vim && chmod 700 ~/.vim/trace

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qa
