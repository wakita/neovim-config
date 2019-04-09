#!/bin/sh

# NeoVim がなかったらインストールする
if !(brew ls --versions neovim > /dev/null); then
  brew install neovim
fi

# Dropbox に保存されているNeoVimの設定へシンボリックリンクを貼る
mkdir -p $HOME/.config
if [ ! -h $HOME/.config/nvim ]; then
  ln -s $HOME/Dropbox/lib/nvim $HOME/.config
fi

# ローカルパスたち
mkdir -p $HOME/.local/share/nvim/{site/after,view}

# ゴミ置き場を作成する
mkdir -p $HOME/.tmp/vim/{backup,swap,undo}

# Python3 や NodeJS のプラグインを利用したければ以下をやる。ほかのソフトウェア環境に強く依存するので、これらは自動化していない。
: <<END OF COMMENTS

  Python 3 support:
    conda activate py37
    conda install unidecode
    pip install pynvim neovim-remote

  NodeJS support:
    npm install -g neovim

END OF COMMENTS
