#!/usr/bin/env bash
set -eux

# save original files
orgdir=~/.vim.$(date +%s)
mkdir -p ${orgdir}
[[ -f ~/.vimrc ]] && mv ~/.vimrc ${orgdir}/
[[ -f ~/.viminfo ]] && mv ~/.viminfo ${orgdir}/
[[ -d ~/.vim ]] && mv ~/.vim ${orgdir}/

# install peaberry
peadir=~/.peaberry
[[ -d ${peadir} ]] && rm -rf ${peadir}
git clone https://github.com/yhue/peaberry.git ${peadir}
[[ -d ~/.vim ]] && rm -rf ~/.vim
ln -s ${peadir}/vim ~/.vim
chmod 755 ~/.vim && chmod 700 ~/.vim/trace

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qa
