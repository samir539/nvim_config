return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- or branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')
        telescope.setup({}) -- Add any custom Telescope setup here

        -- Keybinding Examples Without Using <leader>
        vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true }) -- Ctrl + p for find_files
        vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })  -- Ctrl + f for live_grep
        vim.keymap.set("n", "<C-b>", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })   -- Ctrl + b for buffers
        vim.keymap.set("n", "<C-h>", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true }) -- Ctrl + h for help_tags
    end,
}

