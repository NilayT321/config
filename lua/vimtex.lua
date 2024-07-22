-- Vimtex configuration

vim.g.vimtex_compiler_latexmk = {
    options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '-shell-escape',
    },
}

vim.g.tex_flavor = 'latex' 
vim.g.vimtex_view_enabled = 1 
vim.g.vimtex_view_method = 'zathura_simple'

-- How to do this in Lua?
vim.cmd(
		[[let g:tex_IgnoredWarnings = 
				\'Underfull'."\n".
				\'Overfull'."\n".
				\'specifier changed to'."\n".
				\'You have requested'."\n".
				\'Missing number, treated as zero.'."\n".
				\'There were undefined references'."\n".
				\'Citation %.%# undefined'."\n".
				\'Double space found.'."\n".
				\'|42 warning| Package mdframed Warning:'. "\n"
		]]	
)

vim.g.Tex_IgnoreLevel = 9
vim.g.vimtex_quickfix_open_on_warning = 0 
vim.g.tex_conceal = 'abdmg'
