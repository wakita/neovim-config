let g:goyo_width = 100
let g:goyo_margin_top = 4
let g:goyo_margin_bottom = 4

function StartGoyo()
  set fullscreen
  Goyo
endfunction

" :Goyo [width]
"nnoremap <Leader><Space> :Goyo<CR>
nnoremap <Leader><Space> call StartGoyo()
