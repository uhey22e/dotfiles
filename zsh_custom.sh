#!/bin/zsh

eval "$(rbenv init - zsh)"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

export EDITOR="vim"

source $(cd $(dirname $0) && pwd)/bookmark.sh

