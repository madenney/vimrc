syntax on

" load local .vimrc file if it exists
set exrc

" my options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set smartcase
set tagcase=followic
set relativenumber
set number
set nohlsearch
set incsearch
set scrolloff=8
set termguicolors
set signcolumn=yes

" file options
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


" from primeagen
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact',"substring","fuzzy"]
set cmdheight=2
set updatetime=50
set shortmess+=c


"Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'gruvbox-community/gruvbox'
Plug 'vimwiki/vimwiki'

call plug#end()

lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

let mapleader = ' '

" Find files using Telescope 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Jump between windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Ease of life stuff
nnoremap <leader>cl aconsole.log()<esc>i
