" Gilles Castel: How I'm able to take notes in mathematics lectures using LaTeX and Vim
" https://castel.dev/post/lecture-notes-1

let g:tex_flavor='latex'
if has('mac')
  let g:vimtex_view_method='skim'
  " NeoVim remote support
  let g:vimtex_compiler_progname = 'nvr'
  " on Skim: command := nvr, args := --remote-silent "%file" -c "%line"
else
  let g:vimtex_view_method='zathura'
endif
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Syncing with Skim
" https://qiita.com/KeitaNakamura/items/87dad47dc09ae8bf6abf
" Requires vimtex: https://github.com/lervag/vimtex

let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '@line @pdf @tex'
