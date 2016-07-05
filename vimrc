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

NeoBundle 'Shougo/unite.vim'

" color scheme
NeoBundle 'w0ng/vim-hybrid'
" NeoBundle 'jonathanfilip/vim-lucius'
" NeoBundle 'tomasr/molokai'

" comment out
NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

" インデントに色を付けて見やすくする
" NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" End Neo Bundle Settings

syntax enable
set number
set ruler
set clipboard=unnamed,autoselect

" colorscheme hybrid 
" colorscheme desert
" colorscheme elflord
" colorscheme molokai

set t_Co=256

"autocmd BufNewFile,BufReadPost *.ino set filetype=cpp

set backspace=indent,eol,start

" Tab Settings
set tabstop=4
set shiftwidth=4
set autoindent

filetype on
