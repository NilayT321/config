-- Configuration for nvim-cmp and autocomplete
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body) -- For `luasnip` users.
      end,
    },

    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },

		mapping = cmp.mapping.preset.insert({
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({select = false}),
				['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.select_next_item(select_opts)
						else
								fallback()
						end
				end, {'i', 's'}),
				
				['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.select_prev_item(select_opts)
						else
								fallback()
						end
				end, {'i', 's'}),

				['<C-k>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.scroll_docs(4)
						else
								fallback()
						end
				end, {'i', 's'}),

				['<C-b>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.scroll_docs(-4)
						else
								fallback()
						end
				end, {'i', 's'}),
		}),

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
			{ name = 'html-css' },
      { name = 'luasnip' }, 
    }, {
      { name = 'buffer' },
    }),
		
		formatting = {
				fields = {'menu', 'abbr', 'kind'},
				format = function(entry, item) 
						local menu_icon = {
								nvim_lsp = '[LSP]',
								luasnip = '[SNIP]',
								buffer = '[BUF]'
						}
						item.menu = menu_icon[entry.source.name]
						return item
				end
		},
})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

