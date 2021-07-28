" ~/.config/nvim
"   ~/.config/nvim/pack/kw/start/main
"   ~/.local/share/nvim/plugged/vim-sensible
"   ~/.local/share/nvim/plugged/seoul256.vim
"   ~/.local/share/nvim/plugged/goyo.vim
" /etc/xdg/nvim
" ~/.local/share/nvim/site
"   ~/.local/share/nvim/site/pack/kw/start/deepl.nvim
" /usr/local/share/nvim/site
" /usr/share/nvim/site
" ~/tmp/nvim-osx64/share/nvim/runtime
"   ~/tmp/nvim-osx64/share/nvim/runtime/pack/dist/opt/matchit
" ~/tmp/nvim-osx64/lib/nvim
"   ~/.config/nvim/pack/kw/start/main/after
"
"   /usr/share/nvim
"   /site/after
" /usr/share/nvim/site/after
" /usr/local/share/nvim/site/after
" ~/.local/share/nvim/site/after
" /etc/xdg/nvim/after
"   ~/.local/share/nvim/plugged/ultisnips/after
"   ~/.local/share/nvim/plugged/vim-scala/after
"   ~/.local/share/nvim/plugged/vimtex/after
"   ~/.local/share/nvim/plugged/vim-tex-fold/after
" ~/.config/nvim/after
"   /usr/local/opt/fzf


" <Leader> は一番最初に設定すること
let mapleader="\<Space>"
let maplocalleader=mapleader

language en_US

" Plugin manager (junegunn/vim-plug): execute `:PlugInstall`
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Basic
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'

" Japanese
Plug 'tyru/eskk.vim'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Files and repositories
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'

" Terminal
Plug 'kassio/neoterm'

" Coding
Plug 'rizzatti/dash.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'derekwyatt/vim-scala'
Plug 'posva/vim-vue'

" Writing
Plug 'lervag/vimtex' | Plug 'matze/vim-tex-fold'
Plug 'vim-pandoc/vim-pandoc' | Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'fmoralesc/vim-pad'
"Plug 'impactaky/deepl.nvim'

" Folding
Plug 'Konfekt/FastFold'

" My settings
Plug '~/Dropbox/lib/nvim'

" Not used
if 0
" Japanese
Plug 'vim-jp/autofmt'
Plug 'fuenor/JPFormat.vim'

" Color scheme
Plug 'iCyMind/NeoSolarized'
endif

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
