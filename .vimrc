" Neo Bundle Settings
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
  
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'

" color scheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'tomasr/molokai'

" syntac
NeoBundle "sudar/vim-arduino-syntax"

" comment out
NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

" Setting of processing
NeoBundleLazy 'sophacles/vim-processing'
augroup Processing
    autocmd!
    autocmd BufNewFile *.pde NeoBundleSource vim-processing
    autocmd BufRead    *.pde NeoBundleSource vim-processing
augroup END

" インデントに色を付けて見やすくする
" NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
" let g:indent_guides_enable_on_vim_startup = 1
   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
    
call neobundle#end()
	 
" Required:
filetype plugin indent on

" End Neo Bundle Settings

syntax enable
set number
set ruler
set clipboard=unnamed,autoselect

" colorscheme hybrid 
" colorscheme desert
colorscheme elflord
" colorscheme molokai

set t_Co=256

"autocmd BufNewFile,BufReadPost *.ino set filetype=cpp

set backspace=indent,eol,start

" Tab Settings
set tabstop=4
set shiftwidth=4
set autoindent

filetype on
