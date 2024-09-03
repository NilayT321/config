-- Miscalleneous plugins and options 

-- Line numbers on 
vim.opt.number = true 
vim.opt.showmode = false

-- Set leader key 
vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.o.shiftwidth = 4

-- Navigate between buffers 
vim.keymap.set('n', '<localleader>bp', '<cmd>bp <cr>')
vim.keymap.set('n', '<localleader>bn', '<cmd>bn <cr>')

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- Set colorscheme
require('onedark').load()

-- Comments 
require('Comment').setup()

-- Bufferline 
require("bufferline").setup{}

