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

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

'''
Python 3 support:
    conda activate py37
    conda install unidecode
    pip install pynvim neovim-remote

NodeJS support:
    npm install -g neovim
'''

# Create local temporary directories
mkdir -p $HOME/.tmp/vim/{backup,undo}
