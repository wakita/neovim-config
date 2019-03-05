# `neovim` の構成

`setup.sh`を見て下さい。ほとんどの設定は `Dropbox/lib/nvim` に保存してあります。`~/.config/nvim` はこのディレクトリへのシンボリックリンクとしています。バックアップ等のファイルは Dropbox に保存すると複数の機器の間で衝突して面倒なので `.tmp.nvim` に別途設けています。

# Packages

いくつかのパッケージを `pack/start` に保存しています。すべて `git clone` して拾ってきました。`nvim`の標準的なパッケージ管理方式に任せているので、ほかのパッケージ管理システムは利用していません。

- eskk.vim:               SKK (かな漢字変換)
- fzf.vim:                ファジー検索 (要 `fzf`):
- goyo.vim:               集中編集モード
- neoterm:                ターミナル機能の強化
- vim-fugitive:           Git機能の強化
- vim-python-pep8-indent: Python
- vim-scala:              Scala

# 個人的な設定ファイルの構成

- `init.vim`
- `user/*.vim`
