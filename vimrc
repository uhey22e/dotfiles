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

" Powerline
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}

" GitGutter
NeoBundle 'airblade/vim-gitgutter'

" lexima
NeoBundle 'cohama/lexima.vim'

" For React.js
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Color Schemes
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" colorscheme
set background=dark
colorscheme jellybeans

" basic settings
set backspace=2
set number
set list
set list listchars=tab:\▸\-,trail:-
set paste
set laststatus=2
set clipboard+=unnamedplus,unnamed
syntax on

" tab settings
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" command complete setting
set wildignorecase
set wildmode=list,full

" key bindings
inoremap <C-a> <Home>
inoremap <C-e> <End>

let g:lexima_no_default_rules = 1
call lexima#set_default_rules()

