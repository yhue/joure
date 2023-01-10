setg backup
setg backupdir=~/.vim/trace/backup//
if $TMP !=# ''
  execute 'setg backupdir+=' .. escape(expand($TMP), ' \')
elseif has('unix')
  setg backupdir+=/tmp
endif
setg backupcopy=yes

setl swapfile
setg directory=~/.vim/trace/swap//

if has('persistent_undo')
  setl undofile
  setg undodir=~/.vim/trace/undo
  augroup vimrc-undofile
    autocmd!
    autocmd BufReadPre ~/* setlocal undofile
    if has('win32')
      autocmd BufReadPre D:/* setlocal undofile
    endif
  augroup END
endif

setg viewdir=~/.vim/trace/view

if has('viminfo')
  setg viminfo='500,<500,s50,h,ra:,rb:,n~/.vim/trace/info/viminfo
end
