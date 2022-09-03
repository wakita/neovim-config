nnoremap <C-R> :w<CR>:7sp<CR>:term ./%<CR>

" タブを巡回
nnoremap <tab>h :tabprev<cr> | nnoremap <Leader>th :tabprev<CR>
nnoremap <tab>l :tabnext<cr> | nnoremap <Leader>tl :tabnext<CR>

" 上下左右のウィンドウに移動
nnoremap <Leader>wh  <c-w>h
nnoremap <Leader>wj  <c-w>j
nnoremap <Leader>wk  <c-w>k
nnoremap <Leader>wl  <c-w>l
nnoremap <Leader>ws  <c-w>s
nnoremap <Leader>wv  <c-w>v
nnoremap <Leader>w-  <c-w>-
nnoremap <Leader>w+  <c-w>+
nnoremap <Leader>w\| <c-w>|
nnoremap <Leader>w=  <c-w>=

" バッファを交換
nnoremap <c-b>h :bprev<CR> | nnoremap <Leader>bh :bprev<CR>
nnoremap <c-b>l :bnext<CR> | nnoremap <Leader>bl :bnext<CR>
