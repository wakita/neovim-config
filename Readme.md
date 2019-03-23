# `neovim` の構成

`setup.sh`を見て下さい。ほとんどの設定は `Dropbox/lib/nvim` に保存してあります。`~/.config/nvim` はこのディレクトリへのシンボリックリンクとしています。バックアップ等のファイルは Dropbox に保存すると複数の機器の間で衝突して面倒なので `$HOME/.tmp/nvim` に別途設けています。

# Packages

いくつかのパッケージを `pack/bundle/start` に保存しています。すべて `git clone` して拾ってきました。NoeVimの標準的なパッケージ管理方式に任せています。従来のパッケージ管理システムは利用していません。

| Package                        | Description
| ------------------------------ | ---------------------------
| tyru/eskk:                     | SKK (かな漢字変換)
| junegunn/fzf.vim:              | ファジー検索 (要 `fzf`)
| junegunn/goyovim:              | 集中編集モード
| kassio/neoterm:                | ターミナル機能の強化
| iCyMind/NeoSolarized:          | 基本的なハイライト
| SirVer/ultisnips:              | スニペット
| tpope/vim-fugitive:            | Git
| Vimjas/vim-python-pep8-indent: | Python
| derekwyatt/vim-scala:          | Scala
| honza/vim-snippets:            | スニペット
| lervag/vimtex:                 | LaTeX
------------------------------------------------------------

# 個人的な設定ファイルの構成

設定が多くなると疲れるので、NeoVim の個人的な設定は `user/*.vim` に関連する項目ごとに整理しています。`init.vim` はそれらの設定を読み込んでいるだです。

- `init.vim`
- `user/*.vim`
