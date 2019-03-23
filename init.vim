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

highligh! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

call plug#begin('~/.local/share/nvim/plugged')

Plug 'lervag/vimtex'

Plug 'Sirver/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

runtime! user/*.vim
