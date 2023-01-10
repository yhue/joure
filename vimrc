" Modify vim-core defailt

setg nocompatible

if !has('win32') && !has('win64')
  setg shell=/usr/local/bin/bash
endif

if exists('&completeslash')
  setg completeslash=slash
endif

let g:no_gvimrc_example         = 1
let g:no_gvimrc_example         = 1
let g:no_vimrc_example          = 1

let g:loaded_gzip               = 1
let g:loaded_tar                = 1
let g:loaded_tarPlugin          = 1
let g:loaded_zip                = 1
let g:loaded_zipPlugin          = 1
let g:loaded_rrhelper           = 1
let g:loaded_vimball            = 1
let g:loaded_vimballPlugin      = 1
let g:loaded_getscript          = 1
let g:loaded_getscriptPlugin    = 1
let g:loaded_netrw              = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_netrwSettings      = 1
let g:loaded_netrwFileHandlers  = 1
let g:did_install_default_menus = 1
let g:skip_loading_mswin        = 1
let g:did_install_syntax_menu   = 1
"let g:loaded_2html_plugin       = 1

let g:mapleader = '\'
let g:maplocalleader = ','
let g:netrw_home = '~/.vim/trace/info'

" No plugin or customize on git interface
if $HOME != $USERPROFILE && $GIT_EXEC_PATH != ''
  finish
end

" For windows path
if has('win32')
  let $PATH='c:\dev\vim;c:\msys64\mingw64\bin;c:\msys64\usr\bin;'
  \ .'c:\Program Files\Java\jdk1.8.0_221\bin;'.$PATH
endif

" Declear plugins
let g:plug_shallow = 0

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
"Plug 'thinca/vim-ambicmd'
"Plug 'thinca/vim-openbuf'
"Plug 'thinca/vim-quickrun'
"

call plug#end()

let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

" Load plugins and custom settings
runtime! _config/*.vim
