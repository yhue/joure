set fileformat=unix

set autoindent

set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

set tabstop=2 shiftwidth=0 expandtab
if has('audocmd')
  autocmd FileType python setl tabstop=4 shiftwidth=0 expandtab
  autocmd FileType ruby   setl tabstop=2 shiftwidth=0 expandtab
endif

setg backspace=indent,eol,start
