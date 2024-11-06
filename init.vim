call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'ggandor/leap.nvim'
 Plug 'nvim-tree/nvim-web-devicons' 
 Plug 'lewis6991/gitsigns.nvim' 
 Plug 'romgrk/barbar.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope-fzf-native.nvim'
 Plug 'nvim-treesitter/nvim-treesitter'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
call plug#end()

lua require('leap').create_default_mappings()


let mapleader=","
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
set splitbelow
set splitright


"Keymaps
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

nnoremap <leader>n :NERDTreeToggle<CR> 
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

nnoremap <leader>ff <cmd>Telescope find_files<cr>

nnoremap <silent>    <C-p> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-n> <Cmd>BufferNext<CR>
nnoremap <leader>bp <Cmd>BufferPin<CR>
nnoremap <leader>bb <Cmd>BufferPick<CR>
nnoremap <leader>bc <Cmd>BufferClose<CR>
nnoremap <leader>br <Cmd>BufferReopen<CR>
nnoremap <leader>ba <Cmd>BufferCloseAllButCurrentOrPinned<CR>
