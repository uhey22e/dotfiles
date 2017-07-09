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

  " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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


"lightline settings-----------------------

let g:lightline = { 'colorscheme': 'solarized' }

"End lightline settings-------------------


"Basic settings---------------------------

" Appearance settings
set background=dark
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
colorscheme apprentice

" basic settings
set backspace=2
set number
set list listchars=tab:\>\-,trail:-
set clipboard+=unnamedplus,unnamed
set laststatus=2

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
nnoremap <silent> ;uf :Unite file<CR>
nnoremap <silent> ;ub :Unite buffer<CR>

set autoread
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

"End Basic settings-----------------------

