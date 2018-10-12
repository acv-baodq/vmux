"" Basic config
set nocompatible
filetype plugin indent on
set ttm=100 " Don't wait when doing <Esc>O, ttimeoutlen
filetype plugin indent on  
set noswapfile
syntax on
set hidden
set scrolloff=8
set laststatus=2
set nowrap
set lazyredraw
color lucius
set background=light
" Center thing
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()
" leave insert mode quickly
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif
"" Indent
set softtabstop=2
set shiftwidth =2
set autoindent 
set expandtab    
set smarttab    
"" Search
set path+=**
set ignorecase
set incsearch
"set hlsearch
set wildmenu
set wildmode=list:full
set wildignore+=tmp/**
"" Binding Leader
let mapleader = " "
imap jk <ESC>
nmap <Leader>b :ls<CR>:b<Space>
"nmap <Leader>l :bufdo e<CR>
"nmap <Leader>bn :bn<CR>
"nmap <Leader>bp :bp<CR>
nmap <Tab> :bn<CR>
nmap <bs> :bp<CR>
nmap <Leader>bd :bd<CR>
nmap <Leader>o :find<Space>
nmap <Leader>e :Explore<CR>
nmap <Leader>s :w<CR>
nmap <Leader><Leader> :nohlsearch<CR>
nmap <Leader>st :e ~/.vimrc<CR>
nmap <Leader>rl :so ~/.vimrc<CR>
" Plugin
"set rtp+=~/.fzf	
"let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class|tmp$'
"nmap <Leader>p :FZF .<CR>

