-- Load LSP configurations
-- local lspconfig = require('lspconfig')
-- lspconfig.pyright.setup {}
-- lspconfig.clangd.setup {}
-- lspconfig.texlab.setup {}
-- lspconfig.hls.setup {}
-- lspconfig.rust_analyzer.setup {}
-- lspconfig.tinymist.setup {
-- 		settings = {
-- 						formatterMode = "typstyle",
-- 						exportPdf = "onType",
-- 						semanticTokens = "disable"
-- 				}
-- }
--
-- lspconfig.html.setup {}
-- lspconfig.cssls.setup {}

vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('texlab')
vim.lsp.enable('hls')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('lemminx')
vim.lsp.enable('html') 
vim.lsp.enable('cssls')

-- Mason
require("mason").setup()
