set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'morhetz/gruvbox'
  Plugin 'junegunn/goyo.vim'
  Plugin 'jonathanfilip/vim-lucius'
call vundle#end()
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Theme airline
let g:airline_theme='lucius'
" Theme
color lucius
set background=dark

" Basic config
set nocompatible
filetype off
filetype plugin indent on  
set noswapfile
syntax on                 
set hidden
set lazyredraw
set nocursorcolumn
set cursorline
set showcmd
set autoindent 
set expandtab    
set softtabstop=2
set shiftwidth =2
set smartindent
set ruler
set laststatus=2
set ignorecase
set incsearch
set wildmenu
set path+=**
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
let mapleader =" "
imap jk <Esc>
nmap <Leader>s :w<CR>
nmap <Leader>b :ls<CR>:b<Space>
nmap <Leader>l :bufdo e<CR>
nmap <Leader>n :bn<CR>
nmap <Leader>p :bp<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>o :find<Space>
nmap <Leader>e :Explore<CR>
nmap <Leader>a :Goyo<CR>
map <Leader>g :let &background = ( &background == "dark"? "light" : "dark" )<CR>

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set scrolloff=999
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showcmd
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
