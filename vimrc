"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
if has('unix')
  let s:dein_dir = expand('~/.cache/dein')
  let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
else
  let s:dein_dir = expand('~\.cache\dein')
  let s:dein_repo_dir = s:dein_dir . '\repos\github.com\Shougo\dein.vim'
endif
execute 'set runtimepath+=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  if has('unix')
    let g:rc_dir = expand('~/.vim')
  else
    let g:rc_dir = expand('~/vimfiles')
  endif
  let s:toml = g:rc_dir . '/dein.toml'

  call dein#load_toml(s:toml, {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



"Basic settings---------------------------

" Appearance settings
set background=dark
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

" basic settings
set backspace=2
set number
set list listchars=tab:\>\-,trail:-
set clipboard+=unnamedplus,unnamed

" tab settings
set autoindent
set smartindent
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

" command complete setting
set wildignorecase
set wildmode=list,full

" key bindings
nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <silent> <space>uf :Unite file<CR>
nnoremap <silent> <space>ub :Unite buffer<CR>

set autoread
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

"End Basic settings-----------------------


"Jellybeans settings----------------------

let g:jellybeans_overrides = {
\   'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
colorscheme jellybeans

"End Jellybeans settings------------------


"NERD Commenter settings------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"End NERD Commenter settings--------------


"lightline settings-----------------------

set laststatus=2
let g:lightline = { 'colorscheme': 'jellybeans' }

"End lightline settings-------------------

