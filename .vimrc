let mapleader = " "
nmap <Leader>s :w<CR>
nmap <Leader>b :ls<CR>:b<Space>
nmap <Tab> :bn<CR>
nmap <bs> :bp<CR>
nmap <Leader>bd :bd<CR>
nmap <Leader>o :find<Space>
nmap <Leader>e :Explore<CR>
nmap <Leader>n :nohlsearch<CR>
nmap <Leader>st :e ~/.vimrc<CR>
nmap <Leader>y "+
nmap <Leader>yy "+yy
nmap <Leader>yw "+yiw
nmap <Leader>D :! cp % %:h/
nmap <Leader>cn :e ~/Dropbox/notes/coding-notes.txt<CR>

" Basic
filetype plugin indent on
set noswapfile
syntax on
set hidden
set scrolloff=8
"set nowrap
set ruler
set lazyredraw
set timeout timeoutlen=350 ttimeoutlen=100
set bg=dark
colors lucius

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
set expandtab    
set softtabstop=2
set shiftwidth =2
set autoindent 
set smarttab

" Search
set path+=**
set smartcase
set incsearch
set hlsearch
set wildmenu
set wildmode=list:full
set wildignore+=*/tmp/**,*/node_modules/*

" Plugin
set rtp+=~/.fzf	
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class|tmp$'
nmap <Leader>p :FZF .<CR>
"set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter
set makeprg=bundle\ exec\ rspec\ --format\ progress
:map <leader>q :cg quickfix.out \| cwindow<CR>

