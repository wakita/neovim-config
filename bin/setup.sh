#!/bin/sh

# NeoVim のインストール
if !(brew ls --versions neovim > /dev/null); then brew install neovim; fi

# 設定ディレクトリの作成
confdir=$HOME/.config/nvim
localdir=${XDG_DATA_HOME:-$HOME/.local/share}
mkdir -p $confdir $localdir{/site/after,view}

conf_style=vim
conf_style=lua

[ ! -f $confdir/init.$conf_style ] && ln -s $DROPBOX/lib/nvim/init.$conf_style $confdir  # 設定ファイル

case $conf_style in
  vim)
    # プラグインマネージャ (junegunn/vim-plug) のインストール
    plugdir=$localdir/nvim/site/autoload/plug.vim
    [ ! -f $plugdir] && curl -fLo $plugdir --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ;;

  lua)
    # プラグインマネージャ (savq/paq-nvim) の設定
    paqdir=$localdir/nvim/site/pack/paqs/start/paq-nvim
    [ ! -d $paqdir ] && git clone --depth=1 https://github.com/savq/paq-nvim.git $paqdir
    ;;
esac

# Python3 や NodeJS のプラグインを利用したければ以下をやる。ほかのソフトウェア環境に強く依存するので、これらは自動化していない。
: <<END OF COMMENTS

  Python 3 support:
    brwe install python@3.9
    python3.9 -m venv ~/.venvs/nvim
    pip install --upgrade -r python3/requirements.txt

  NodeJS support:
    npm install -g neovim

END OF COMMENTS
