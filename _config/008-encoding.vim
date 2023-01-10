if &encoding !=? 'utf-8'
  let &termencoding = &encoding
  setg encoding=utf-8
endif

scriptencoding utf-8
