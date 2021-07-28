# NeoVimの設定

## [`init.vim`](init.vim)

最小限の設定（`<Leader>` の設定と言語設定）とプラグインの読み込み（プラグイン管理システムは `junegunn/vim-plug`）

~~~
let mapleader="\<Space>"
let maplocalleader=mapleader
language en_US
~~~

実は下記の自分用の設定パッケージに同居させ、`~/.config/nvim/init.vim -> ~/Dropbox/lib/nvim/init.vim`というシンボリックリンクで参照している。

本パッケージは `~/Dropbox/lib/nvim` に配置し、これを `vim-plug` の unmanaged plugin として設定している。

~~~
" My settings
Plug '~/Dropbox/lib/nvim'
~~~

このパッケージの構造は普通の Vim パッケージと同じく `after/`, `doc/`, `ftplugin/`, `plugin/` などを含む。

この設定の備忘録として [`/Dropbox/lib/nvim/bin/setup.sh`](bin/setup.sh) を用意した。
