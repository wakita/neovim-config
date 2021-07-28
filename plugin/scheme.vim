set lispwords+=public-method,override-method,private-method,syntax-case,syntax-rules

if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=scheme
endif
