#!/usr/bin/env bash
set -eux

# install https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# save original files
orgdir=~/.vim.$(date +%s)
mkdir -p ${orgdir}
[[ -f ~/.vimrc ]] && mv ~/.vimrc ${orgdir}/
[[ -f ~/.viminfo ]] && mv ~/.viminfo ${orgdir}/
[[ -d ~/.vim ]] && mv ~/.vim ${orgdir}/

# install joure
git clone https://github.com/yhue/joure.git /git/joure
ln -s /git/joure ~/.vim
chmod 755 ~/.vim && chmod 700 ~/.vim/trace
