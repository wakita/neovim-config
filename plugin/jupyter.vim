command! Jupyter set ft=python | JupyterConnect

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For jupytext

" セルの区切り文字をVSCode互換の # %% に指定する
let g:jupytext_fmt = 'py:percent'
"let g:jupytext_fmt = 'py:sphinx'
"let g:jupytext_fmt = 'md'

" vimのPython向けシンタックスハイライトを有効にする
let g:jupytext_filetype_map = {'py': 'python'}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For jupyter-vim
" Run current file
nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
