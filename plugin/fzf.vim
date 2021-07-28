set rtp+=/usr/local/opt/fzf

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

" Vim after 15 years
" https://statico.github.io/vim3.html

nmap <Leader>b :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

nnoremap <silent> <C-p> :ProjectFiles<CR>
nnoremap <silent> <M-p> :History<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
"
" Replace the default dictionary completion with fzf-based fuzzy completion
inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

function! GetWindowID(...)
  return fzf#vim#complete('/usr/local/bin/GetWindowID Terminal --list')
endfunction

nmap <Leader>z :call GetWindowID()<CR>
inoremap <c-x><c-z> fzf#vim#complete('/usr/local/bin/GetWindowID Terminal --list')
