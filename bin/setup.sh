#!/bin/sh

# NeoVim がなかったらインストールする
if !(brew ls --versions neovim > /dev/null); then
  brew install neovim
fi

# Dropbox に保存されているNeoVimの設定へシンボリックリンクを貼る
mkdir -p $HOME/.config/nvim

# ローカルパスたち
mkdir -p $HOME/.local/share/nvim/{site/after,view}

# プラグインマネージャ (junegunn/vim-plug) の設定
if [ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ]; then
  curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
       --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Python3 や NodeJS のプラグインを利用したければ以下をやる。ほかのソフトウェア環境に強く依存するので、これらは自動化していない。
: <<END OF COMMENTS

  Python 3 support:
    conda activate py37
    conda install unidecode
    pip install pynvim neovim-remote

  NodeJS support:
    npm install -g neovim

END OF COMMENTS
