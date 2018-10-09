colorscheme gruvbox
set background=dark
"" Basic config
set ttm=100 " Don't wait when doing <Esc>O, ttimeoutlen
set nocompatible
filetype off
filetype plugin indent on  
set noswapfile
syntax on
set hidden
set scrolloff=8
set laststatus=2
set nowrap
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
nmap <C-]> <C-]>zz
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()
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
set hlsearch
set wildmenu
set wildmode=list:full
set wildignore+=tmp/**
"" Binding Leader
let mapleader = " "
nmap <Leader>s :w<CR>
nmap <Leader>ls :ls<CR>:b<Space>
nmap <Leader>l :bufdo e<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Tab> :bn<CR>
nmap <bs> :bp<CR>
nmap <Leader>bd :bd<CR>
nmap <Leader>o :find<Space>
nmap <Leader>e :Explore<CR>
nmap <Leader><Leader> :nohlsearch<CR>

hi Normal ctermbg=NONE guibg=NONE
