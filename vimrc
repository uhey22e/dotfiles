" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" Unite Vim
NeoBundle 'Shougo/unite.vim'

" Smart Input
NeoBundle "kana/vim-smartinput"

" Color Schemes
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" basic settings
set backspace=2
set number
set ruler
set list
set list listchars=tab:\▸\-
set paste

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" tab settings
set autoindent
set tabstop=4
set shiftwidth=4

" color scheme
colorscheme jellybeans

