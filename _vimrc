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

NeoBundleLazy 'Shougo/vimshell', {
  \ 'depends' : 'Shougo/vimproc',
  \ 'autoload' : {
  \   'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
  \                 'VimShellExecute', 'VimShellInteractive',
  \                 'VimShellTerminal', 'VimShellPop'],
  \   'mappings' : ['<Plug>(vimshell_switch)']
  \ }}

" vimshell {{{
nmap <silent> vs :<C-u>VimShell<CR>
nmap <silent> vp :<C-u>VimShellPop<CR>
" }}}

NeoBundle 'Shougo/vimfiler.vim'

" color scheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'tomasr/molokai'

" indent-guides
NeoBundle 'nathanaelkane/vim-indent-guides' 

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140
let g:indent_guides_guide_size=1

" syntax
NeoBundle "sudar/vim-arduino-syntax"

" comment out
NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

NeoBundle 'istepura/vim-toolbar-icons-silk'

" Setting of processing
" NeoBundleLazy 'sophacles/vim-processing'
" augroup Processing
"     autocmd!
"     autocmd BufNewFile *.pde NeoBundleSource vim-processing
"     autocmd BufRead    *.pde NeoBundleSource vim-processing
" augroup END

" インデントに色を付けて見やすくする
" NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"------------------------------------------
" End Neo Bundle Settings
"------------------------------------------

set runtimepath+=~/.vim/minimap-vim/

syntax enable
" set number
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
