local tree = require("nvim-tree")

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
tree.setup({
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
