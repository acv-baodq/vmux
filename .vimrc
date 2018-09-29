set nocompatible
filetype off                  " required

" Plugins
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-surround'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'Yggdroot/indentLine'
  Plugin 'dracula/vim'
  Bundle 'edkolev/tmuxline.vim'
call vundle#end()

"Basic config
filetype plugin indent on  
syntax on                 
set autoindent 
set expandtab    
set softtabstop =2
set shiftwidth  =2
set ruler
set cursorline
set laststatus=2
set number
set ignorecase
set incsearch
set wildmenu
set path+=**

" THEME
let g:airline_theme='dracula'
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None
let g:airline_powerline_fonts = 1


" binding key
nmap <C-P> :FZF .<CR>
