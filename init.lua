-- The 300 line init.lua challenge
-- https://neovim.discourse.group/t/the-300-line-init-lua-challenge/227

local MYDIR = os.getenv('DROPBOX') .. '/lib/nvim'

local g = vim.g
local o = vim.o

g.mapleader      = ' '  --let mapleader = "\<Space>"
g.maplocalleader = ';'  --let maplocalleader = ","

g.python3_host_prog = "$HOME/.venvs/nvim/bin/python3"
g.loaded_python_provider = 0

o.helplang = 'ja'       -- set helplang=ja

vim.cmd('language en_US')
vim.cmd(string.format('let &runtimepath .= ",%s"', MYDIR))

require 'paq' {
  'savq/paq-nvim';

  'tpope/vim-sensible';  -- 万人向け基本設定
  'embear/vim-localvimrc';
  'jnurmine/Zenburn';    -- Color scheme

  'tyru/eskk.vim';       -- 仮名漢字変換

  'SirVer/ultisnips'; 'honza/vim-snippets';

  'junegunn/fzf.vim'; { 'junegunn/fzf', run=vim.fn['fzf#install'] };
  'tpope/vim-fugitive';

  'kassio/neoterm';

  'jupyter-vim/jupyter-vim';
  'goerz/jupytext.vim';

  'rizzatti/dash.vim';
  'Vimjas/vim-python-pep8-indent';
  'davidhalter/jedi-vim';
  'derekwyatt/vim-scala';
  'posva/vim-vue';
  'JuliaEditorSupport/julia-vim';

  -- 各種ドキュメント
  'vim-jp/vimdoc-ja';
  'vim-scripts/luarefvim';  -- Lua 5.0, 5.1 Reference document


  --[[
  'hkupty/iron.nvim;  -- 試したけれど動かなかった (2021-07-29)
  'vim-textobj-hydrogen';
  --]]


  -- 執筆
  'lervag/vimtex'; 'matze/vim-tex-fold';
  'vim-pandoc/vim-pandoc'; 'vim-pandoc/vim-pandoc-syntax';
  'vim-pandoc/vim-pandoc-after';
  'fmoralesc/vim-pad';
  'ryicoh/deepl.vim';

  'glacambre/firenvim'; { 'glacambre/firenvim', run=vim.fn['firenvim#install'] };

  'mattn/webapi-vim';  -- qiita-vim が依存している
  'mattn/qiita-vim';
}

vim.cmd[[packadd matchit]]

for i, pack in ipairs({ 'chiqiita', 'nvim-whid', 'pandocserver' }) do
  vim.cmd(string.format('let &runtimepath .= ",%s/kw/%s"', MYDIR, pack))
end

-- vim: sw=2
