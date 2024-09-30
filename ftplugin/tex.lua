require('texpresso').attach()
require('texpresso').texpresso_path = "/home/ntripathi/texpresso/build/texpresso"

local autocmd = vim.api.nvim_create_autocmd
autocmd({"InsertLeave"},{
    group = vim.api.nvim_create_augroup('texpressoGroup',{}),
    callback = function()
        vim.cmd("TeXpressoSync")
    end
})
