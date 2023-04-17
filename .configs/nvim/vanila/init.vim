" Reference: https://www.youtube.com/watch?v=JWReY93Vl6g
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" Initialize Vim-Plug
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

" End Vim-Plug
call plug#end()

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-;> :NERDTreeToggle<CR>
nnoremap <C-'> :TerminalSplit zsh<CR>
nnoremap <C-/> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans
