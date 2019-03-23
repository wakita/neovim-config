#!/bin/sh

# Install NeoVim if not found
if !(brew ls --versions neovim > /dev/null); then
  brew install neovim
fi

# Create symbolic link to the shared configuration on Dropbox
mkdir -p $HOME/.config
if [ ! -h $HOME/.config/nvim ]; then
  ln -s $HOME/Dropbox/lib/nvim $HOME/.config
fi

: <<END OF COMMENTS

  Python 3 support:
    conda activate py37
    conda install unidecode
    pip install pynvim neovim-remote

  NodeJS support:
    npm install -g neovim

END OF COMMENTS

# Create local temporary directories
mkdir -p $HOME/.tmp/vim/{backup,undo}
