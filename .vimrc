set nocompatible
filetype off

" Plugin
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"  Plugin 'tpope/vim-fugitive'
"  Plugin 'tpope/vim-surround'
"  Plugin 'tpope/vim-rails'
"  Plugin 'jonathanfilip/vim-lucius'
"  Plugin 'bling/vim-airline'
"  Plugin 'vim-airline/vim-airline-themes'
"  Plugin 'Yggdroot/indentLine'
"call vundle#end()
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
" Theme airline
"let g:airline_theme='simple'

" Theme
"let g:dracula_italic = 0
"colorscheme lucius
"set background=light

" Basic config
filetype plugin indent on  
set noswapfile
syntax on                 
set hidden
set ruler

" Indent
set autoindent 
set expandtab    
set softtabstop=2
set shiftwidth =2
set laststatus=2

" Search
set ignorecase
set incsearch
set wildmenu

" Prevent lagging
set noshowmatch
set scrolljump=5
set lazyredraw
set nocursorcolumn
hi NonText cterm=NONE ctermfg=NONE

" Center thing
nmap G Gzz
nmap { {zz
nmap } }zz
nmap n nzz
nmap N Nzz
nmap * *zz
nmap H Hzz
nmap M Mzz
nmap L Lzz
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()

" Binding key
let mapleader = " "
imap jk <Esc>
nmap <Leader>s :w<CR>
nmap <Leader>b :ls<CR>:b<Space>
nmap <Leader>l :bufdo e<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>o :find **/*
nmap <Leader>e :Explore<CR>
