tnoremap <C-v><Esc> <Esc>

nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l

"nnoremap <c-w>[ -tabnext
"nnoremap <c-w>] tabnext

"command! Tnew :5split | :term
"nnoremap <C-W> :bd!<CR>
nnoremap <C-R> :w<CR>:7sp<CR>:term ./%<CR>
