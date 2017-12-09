#!/bin/bash

FILES=(\
  'vimrc' \
  'gvimrc' \
  'dein.toml')

mkdir -p $HOME/.vim
for f in $FILES; do
  ln -sf $(pwd)/$f $HOME/.vim/$f
done

