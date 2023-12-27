-- Set leader key 
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Navigate between buffers 
vim.keymap.set('n', '<localleader>bp', '<cmd>bp <cr>')
vim.keymap.set('n', '<localleader>bn', '<cmd>bn <cr>')

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local vimrc = vim.fn.stdpath("config").."/vimrc.vim"
vim.cmd.source(vimrc)

vim.o.shiftwidth = 4

require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",

	-- Enable repeated nodes (i.e. start and end of environment) to appear together
	update_events = 'TextChanged, TextChangedI'
})

vim.cmd[[
    " Expand snippets in insert mode with Tab
  imap <silent><expr> <Tab> luasnip#expandable() ? '<Plug>luasnip-expand-snippet' : '<Tab>'

  " Jump forward in through tabstops in insert and visual mode with Control-f
  imap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>'
  smap <silent><expr> <C-f> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-f>'

  " Jump backward through snippet tabstops with Shift-Tab (for example)
  imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

-- Lazy load snippets (windows config)
-- require("luasnip.loaders.from_lua").load({paths = "C:\\Users\\nilay\\AppData\\Local\\nvim\\LuaSnip"})
-- require("luasnip.loaders.from_lua").lazy_load({paths = "C:\\Users\\nilay\\AppData\\Local\\nvim\\LuaSnip"})

-- Lazy load snippets (Linux config)
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip"})

-- Set colorscheme
require('onedark').load()

require('lualine').setup {
  options = {
    icons_enabled = false, 
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
				'NvimTree',
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- Set up nvim-cmp. Autocomplete

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

		mapping = {
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

				['<C-j>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.scroll_docs(4)
						else
								fallback()
						end
				end, {'i', 's'}),

				['<C-k>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
								cmp.scroll_docs(-4)
						else
								fallback()
						end
				end, {'i', 's'}),
		},

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
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

		-- Mason 
		require("mason").setup()

-- Nvim-tree 

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Custom mappings for nvim-tree
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

	-- Default mappings 
	api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
	vim.keymap.set('n', '<localleader>t', api.tree.toggle)
end

-- OR setup with some options
require("nvim-tree").setup({
		on_attach = my_on_attach,
		auto_reload_on_write = true,
		sort_by = "case_sensitive",
		view = {
				width = 30,
		},
		renderer = {
				group_empty = true,
		},
		filters = {
				dotfiles = true,
		},
		actions = {
				open_file = {
						quit_on_open = true,
				},
		},
})


-- Tree sitter 
require'nvim-treesitter.configs'.setup {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
		highlight = {
				enable = true,
		},

		sync_install = false,
		auto_install = false,
}

-- Comments 
require('Comment').setup()

-- Bufferline 
require("bufferline").setup{}

-- Vimtex 
vim.g.vimtex_compiler_latexmk = {
    options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '-shell-escape',
    },
}
