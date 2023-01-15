#!/usr/bin/env bash
set -eux

# save original files
orgdir=~/.vim.$(date +%s)
mkdir -p ${orgdir}
[[ -f ~/.vimrc ]] && mv ~/.vimrc ${orgdir}/
[[ -f ~/.viminfo ]] && mv ~/.viminfo ${orgdir}/
[[ -d ~/.vim ]] && mv ~/.vim ${orgdir}/

# setup vim
[[ -d ~/.vim ]] && rm -rf ~/.vim
ln -s ~/.peaberry/vim ~/.vim
chmod 755 ~/.vim && chmod 700 ~/.vim/trace

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qa
