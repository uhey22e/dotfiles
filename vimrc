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
nnoremap <silent> ;ub :Unite buffer<CR>

" NERD Tree
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Color Schemes
NeoBundle 'nanotech/jellybeans.vim'

" Powerline
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}

" GitGutter
NeoBundle 'airblade/vim-gitgutter'

" For React.js
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Other
NeoBundle 'cohama/lexima.vim'
let g:lexima_enable_default_rules = 1

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" basic settings
set backspace=2
set number
set list
set list listchars=tab:\▸\-,trail:-
set paste
set clipboard=unnamedplus
set laststatus=2

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" tab settings
set autoindent
set expandtab
set ts=4
set softtabstop=4
set shiftwidth=4

" color scheme
colorscheme jellybeans

" swap file setting
set directory=/tmp

" command complete setting
set wildignorecase
set wildmode=list,full

" plugin settings
