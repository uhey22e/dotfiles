#!/bin/sh

FILES=(\
  'vimrc' \
  'gvimrc' \
  'dein.toml' \
  'dein-lazy.toml' \
  'syntastic.vim')

mkdir -p $HOME/.vim
for f in ${FILES[@]}; do
  ln -sfv $(pwd)/$f $HOME/.vim/$f
done

