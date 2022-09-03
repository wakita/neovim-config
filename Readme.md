# NeoVim の環境構築

## ターミナルの設定

- macOS のデフォルトの言語設定が「日本語」の場合は、ターミナルの言語設定を英語にする。システム環境設定の「言語と地域＞アプリケーション」にターミナルを追加して、その言語設定を「英語 - English」に指定。

- ターミナルの Preferences... > Profiles > Advanced」で "Unicode Asian Ambiguous characters are wide" に設定。

- AquaSKK が NeoVim 上で動作する eSKK に観賞しないように、AquaSKK の設定で「"ターミナル.app" では直接入力」

## 仮想機械の作成

~~~
brew install python@3.9
python3.9 -m venv ~/.venvs/nvim
~/.venvs/nvim/bin/activate/pip install --upgrade -r python3/requirements.txt
~~~

## `fzf.vim` 関連

~~~
brew install fzf the_silver_searcher
~~~


## [`init.lua`](init.lua)

最小限の設定（`<Leader>` の設定と言語設定）とプラグインの読み込み（プラグイン管理システムは `junegunn/vim-plug`）

~~~
vim.g.mapleader      = ' '  --let mapleader = "\<Space>"
vim.g.maplocalleader = ';'  --let maplocalleader = ","
vim.cmd('language en_US')
~~~

実は下記の自分用の設定パッケージに同居させ、`~/.config/nvim/init.lua -> ~/Dropbox/lib/nvim/init.lua`というシンボリックリンクで参照している。

本パッケージは `~/Dropbox/lib/nvim` に配置している。

このパッケージの構造は普通の Vim パッケージと同じく `after/`, `doc/`, `ftplugin/`, `plugin/` などを含む。

この設定の備忘録として [`bin/setup.sh`](bin/setup.sh) を用意した。

## パッケージのインストール

`PaqInstall`
