"------------------------------------------
" Neo Bundle Settings
"------------------------------------------
 
" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
" NeoBundleを更新するための設定
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" unite
NeoBundle 'Shougo/unite.vim'

if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}

" NERD Tree
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" surround.vim
NeoBundle 'tpope/vim-surround'

" color scheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'tomasr/molokai'

" lightline.vim
NeoBundle 'itchyny/lightline.vim'

" syntax
NeoBundle "sudar/vim-arduino-syntax"

" comment out
NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

NeoBundle 'istepura/vim-toolbar-icons-silk'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"------------------------------------------
" End Neo Bundle Settings
"------------------------------------------

" colorscheme
set background=dark

" basic settings
set backspace=2
set number
set list
set list listchars=tab:\>-,trail:-
set clipboard+=unnamedplus,unnamed
set laststatus=2
syntax on

if !has( 'gui_running' )
    set t_Co=256
endif

" tab settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

" key bindings
nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>

