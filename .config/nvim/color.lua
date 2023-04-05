vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=#0a0a0a
    augroup END
]])
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme darcula]]
