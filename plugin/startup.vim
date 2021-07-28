if has('nvim')
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

color seoul256-light

" 文字コード関連
"   ファイルを UTF-8 で開き直す方法
"   map utf8 :e ++enc=utf-8
"   http://sites.google.com/site/fudist/Home/vim-nihongo-ban/mojibake

set encoding=utf8
command UTF8 set fileencoding=utf8
command SJIS set fileencoding=shift_jis
command JIS  set fileencoding=iso-2022-jp
command Euc  e ++enc=euc-jp<CR>
command EUC  set fileencoding=euc-jp
command UNIX set fileformat=unix

set fileformats=unix,dos,mac
set formatoptions=q

" 編集のための設定
set shiftwidth=2
set textwidth=0

set expandtab
set hidden
set showmatch
set smartindent

"function! local:DisableAutoBreak()
function! s:DisableAutoBreak()
  set wrap
  set textwidth=0
  set wrapmargin=0
" set formatoptions-=5
endfunction

:au BufNewFile,BufRead *.* call s:DisableAutoBreak()

" 日本語

set formatexpr=autofmt#japanese#formatexpr()
let &showbreak = '> '

" 検索関係
set smartcase
"set noincsearch
set nocp
" <C-L> で最後の検索結果のハイライトを消去する

let g:loaded_matchparen=1

" 畳み込み
set foldmethod=marker

" □■
set ambiwidth=double

nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

" プレビュー

" Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
command MarkdownView !markdown preview "%:p"
"autocmd FileType map

" QuickLook
if has('mac')
  command QL !qlmanage -p % >& /dev/null &
endif

filetype plugin indent on

syntax off

" メモ

" git.vim の設定を利用する
" set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

" コマンドライン補完するときに補完候補を表示する
" set wildmenu

" ファイルをあっという間に開く: マーク: m[A-Z], ジャンプ: '[A-Z]
" set shada += f1
