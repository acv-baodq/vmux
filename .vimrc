" Basic config
set nocompatible
filetype plugin indent on
filetype plugin indent on  
set noswapfile
syntax on
set hidden
set scrolloff=8
set laststatus=2
set nowrap
set lazyredraw

" Theme
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

" Center thing
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()

" Indent
set softtabstop=2
set shiftwidth =2
set autoindent 
set expandtab    

" Search
set path+=**
set smartcase
set incsearch
set hlsearch
set wildmenu
set wildmode=list:full
set wildignore+=tmp/**

" Binding Leader
let mapleader = " "
nmap <Leader>b :ls<CR>:b<Space>
nmap <Tab> :bn<CR>
nmap <bs> :bp<CR>
nmap <Leader>bd :bd<CR>
nmap <Leader>o :find<Space>
nmap <Leader>e :Explore<CR>
nmap <Leader>s :w<CR>
nmap <CR> :nohlsearch<CR>
nmap <Leader>st :e ~/.vimrc<CR>
nmap <Leader>y "+
nmap h <NOP>
nmap l <NOP>

" Plugin
set rtp+=~/.fzf	
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class|tmp$'
nmap <Leader>p :FZF .<CR>

