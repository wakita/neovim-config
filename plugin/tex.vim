let g:tex_flavor='latex'

let g:vimtex_compiler_latexmk = { 'build_dir': '/Users/wakita/.tmp/tex' }

" `*latex+` なエンジンの設定は ~/.latexmkrc
let g:vimtex_compiler_latexmk_engines = {
      \ 'pdflatex': '-pdflatex',
      \ 'platex':   '-pdfdvi -latex=platex',  'platex+':  '-e "platex()"',
      \ 'uplatex':  '-pdfdvi -latex=uplatex', 'uplatex+': '-e "uplatex()"',
      \ 'lualatex': '-lualatex',
      \ 'xelatex':  '-xelatex'
      \ }

" The quickfix window is opened automatically when there are errors
" let g:vimtex_quickfix_mode=2 (default)

set conceallevel=2
let g:tex_conceal='abdmg'

" neovim -> Skim の画面同期（オプションについてはdisplayline のソースを眺めること）
let g:vimtex_view_general_viewer  = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some notes
"
" Directives
" %! TEX program = <engine>
" %! TEX root = ../main.tex
"
" Gilles Castel: How I'm able to take notes in mathematics lectures using LaTeX and Vim
" https://castel.dev/post/lecture-notes-1
"
" Syncing
" neovim -> Skim: <Leader>lv
" Skim -> neovim: Command+Shift+Click
" https://qiita.com/KeitaNakamura/items/87dad47dc09ae8bf6abf

if 0 """""""""""""""""""" Not in use """""""""""""""""""""""""""""""""
let g:vimtex_compiler_latexmk = {
      \ 'build_dir': '/Users/wakita/.tmp/tex',
      \ 'options': [
      \    '-pdfdvi', 
      \],
    \}

let g:vimtex_compiler_latexmk_engines = {
      \ 'pdflatex': '-e "pdflatex()"',
      \ 'platex':   '-e "platex()"',
      \ 'uplatex':  '-e "uplatex()"',
      \ 'lualatex': '-e "lualatex()"',
      \ 'xelatex':  '-e "xelatex()"',
      \ 'context (pdftex)': '-pdf -pdflatex=texexec',
      \ 'context (luatex)': '-pdf -pdflatex=context',
      \ 'context (xetex)':  '-pdf -pdflatex=''texexec --xtx'''
      \ }

if has('mac')
  let g:vimtex_view_method='skim'
  " NeoVim remote support
  let g:vimtex_compiler_progname = 'nvr'
endif
endif
