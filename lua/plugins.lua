local call = vim.call 
local cmd = vim.cmd 
local Plug = vim.fn['plug#']
local plug_path = "/home/ntripathi/.local/share/nvim/plugged"

call('plug#begin', plug_path)
    Plug 'lervag/vimtex'
    Plug 'sheerun/vim-polyglot'
    Plug ('L3MON4D3/LuaSnip', {tag = 'v2.*'})
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
		Plug 'numToStr/Comment.nvim'
		Plug ('akinsho/bufferline.nvim', { tag = '*' })
		Plug 'kevinhwang91/promise-async'
		Plug 'kevinhwang91/nvim-ufo'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'MeanderingProgrammer/markdown.nvim'
		Plug ('chomosuke/typst-preview.nvim', {tag='v1.*'})
		Plug 'let-def/texpresso.vim'
		Plug 'kaarmu/typst.vim'
		Plug 'Julian/lean.nvim'
call('plug#end')
