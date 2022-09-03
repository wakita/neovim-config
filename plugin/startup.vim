unmap Y

colorscheme zenburn

" 文字コード関連
"   ファイルを UTF-8 で開き直す方法
"   map utf8 :e ++enc=utf-8
"   http://sites.google.com/site/fudist/Home/vim-nihongo-ban/mojibake

set encoding=utf8
command UTF8 set fileencoding=utf8
command SJIS set fileencoding=shift_jis
command JIS  set fileencoding=iso-2022-jp
command EUC  set fileencoding=euc-jp
command Utf8 e ++enc=utf-8
command Sjis e ++enc=shift_jis
command Jis  e ++enc=iso-2022-jp
command Euc  e ++enc=euc-jp
command UNIX set fileformat=unix

set fileformats=unix,dos,mac
set formatoptions=q

set shiftwidth=2
set textwidth=0

set expandtab
set hidden
set showmatch
set smartindent

function! s:DisableAutoBreak()
  set wrap
  set textwidth=0
  set wrapmargin=0
" set formatoptions-=5
endfunction

:au BufNewFile,BufRead *.* call s:DisableAutoBreak()

" 日本語

"set formatexpr=autofmt#japanese#formatexpr()
let &showbreak = '> '
set ambiwidth=double
" テキスト挿入の自動折り返しに日本語を対応
set formatoptions+=mM

" 検索関係
set smartcase

" 畳み込み
set foldmethod=marker

" QuickLook
if has('mac')
  command QL !qlmanage -p % >& /dev/null &
endif

" For hardcopy
set printencoding=utf-8
set printmbcharset=UniJIS2004
set printmbfont=r:Ryumin-Light,b:GothicBBB-Medium,c:yes,a:yes
