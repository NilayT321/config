:set number
:set noshowmode

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'lervag/vimtex'
    Plug 'sheerun/vim-polyglot'
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*', 'do': 'make install_jsregexp'}
    Plug 'navarasu/onedark.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
		Plug 'neovim/nvim-lspconfig'
		Plug 'hrsh7th/cmp-nvim-lsp'
		Plug 'hrsh7th/cmp-buffer'
		Plug 'hrsh7th/cmp-path'
		Plug 'hrsh7th/cmp-cmdline'
		Plug 'hrsh7th/nvim-cmp'
		Plug 'saadparwaiz1/cmp_luasnip'
		Plug 'williamboman/mason.nvim'
		Plug 'mfussenegger/nvim-jdtls'
		Plug 'nvim-tree/nvim-tree.lua'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		Plug 'numToStr/Comment.nvim'
		Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()

" Vimtex settings
filetype plugin indent on
syntax enable
let g:tex_flavor = 'latex'
let g:vimtex_view_enabled = 1
" let g:vimtex_view_method = 'zathura'
let g:tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n".
    \'|42 warning| Package mdframed Warning:'. "\n"
let g:Tex_IgnoreLevel = 9
let g:vimtex_quickfix_open_on_warning = 0


syntax on
