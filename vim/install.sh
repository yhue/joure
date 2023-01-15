#!/usr/bin/env bash
set -eux

# save original files
orgdir=~/.vim.$(date +%s)
mkdir -p ${orgdir}
[[ -f ~/.vimrc ]] && mv ~/.vimrc ${orgdir}/
[[ -f ~/.viminfo ]] && mv ~/.viminfo ${orgdir}/
[[ -d ~/.vim ]] && mv ~/.vim ${orgdir}/

# install peaberry
[[ -d /git/peaberry ]] && rm -rf /git/peaberry
git clone https://github.com/yhue/peaberry.git /git/peaberry
ln -s /git/peaberry/vim ~/.vim
chmod 755 ~/.vim && chmod 700 ~/.vim/trace

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qa
