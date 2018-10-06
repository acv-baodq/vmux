set nocompatible
filetype off

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
set wildmode=list:full
set wildignore+=tmp/**

" Prevent lagging
set noshowmatch
set scrolljump=10
set lazyredraw
set nocursorcolumn
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
nmap <C-]> <C-]>zz
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
nmap <Leader>o :find<Space> 
nmap <Leader>e :Explore<CR>
nmap <Leader>cn :e ~/Dropbox/notes/coding-notes.txt<CR>


" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <F2> :call RenameFile()<cr>
