vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop =4 
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8 

require("config.lazy")
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

