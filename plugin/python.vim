"if filereadable($PYENV_ROOT . '/versions/miniconda-latest/envs/py37/bin/python3')
"  let g:python3_host_prog = $PYENV_ROOT . '/versions/miniconda-latest/envs/py37/bin/python3'
"endif
"
"if filereadable('/usr/local/anaconda3/envs/py37/bin/python')
"  let g:python3_host_prog = '/usr/local/anaconda3/envs/py37/bin/python'
"endif

"autocmd FileType python nnoremap <C-R> :w<CR>:7sp<CR>:term python3 %<CR>

py3 from math import *

" 編集中なら <C-R>* で、Normal mode なら "*p で計算結果をペーストできる。
" command! -nargs=* P let @* = py3eval("str(<args>)") | echo @*
