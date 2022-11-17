call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'itchyny/lightline.vim'
Plug 'doums/darcula'
Plug 'tpope/vim-fugitive'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()


" Colortheme
colorscheme darcula
set termguicolors
let g:lightline = {
      \ 'colorscheme': 'darculaOriginal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


