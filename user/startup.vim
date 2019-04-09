" バックアップ関連
" savevers.vim をインストールすれば世代別のバックアップも可能
set backupdir=$HOME/.tmp/vim/backup
set directory=$HOME/.tmp/vim/swap
set undodir=$HOME/.tmp/vim/undo

set nocompatible

let mapleader = "\<Space>"

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
" git.vim の設定を利用する
" set statusline=%f\ %{'['.(&fenc!=''?&fenc:'?').'-'.&ff.']'}

set fileformats=unix,dos,mac
set formatoptions=q

" 編集のための設定
set backspace=indent,eol,start
set showmatch
set autoindent
set smartindent
set expandtab
set tabstop=8
set shiftwidth=2
set textwidth=0
set hidden

"function! local:DisableAutoBreak()
function! s:DisableAutoBreak()
  set wrap
  set textwidth=0
  set wrapmargin=0
" set linebreak
" set nolist " list disables linebreak
" set fo-=5
endfunction

:au BufNewFile,BufRead *.* call s:DisableAutoBreak()

" 検索関係
set smartcase
set noincsearch
set nocp
set nohlsearch
" <Return> で最後の検索結果のハイライトを消去する．
nnoremap <CR> :nohlsearch<CR><CR>

let g:loaded_matchparen=1

" コマンドライン補完するときに補完候補を表示する
set wildmenu

" ファイルをあっという間に開く: マーク: m[A-Z], ジャンプ: '[A-Z]
" set viminfo += f1

" 畳み込み
set foldmethod=marker

" □■
set ambiwidth=double

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
