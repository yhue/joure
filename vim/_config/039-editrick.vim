setg showmatch
setg matchtime=1

if has('unnamedplus')
  setg clipboard^=unnamedplus
else
  setg clipboard^=unnamed
endif

setg virtualedit=block,insert
