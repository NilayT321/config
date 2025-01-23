-- Load LSP configurations
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
lspconfig.texlab.setup {}
lspconfig.hls.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.tinymist.setup {
		settings = {
						formatterMode = "typstyle",
						exportPdf = "onType",
						semanticTokens = "disable"
				}
}

-- Mason
require("mason").setup()
