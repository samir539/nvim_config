return {
    -- Mason (for managing LSP servers, linters, formatters)
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright" }, -- Automatically install pyright
            })
        end,
    },

    -- LSP configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim", -- Ensure LSP servers work with Mason
            "hrsh7th/nvim-cmp",                 -- Completion framework
            "hrsh7th/cmp-nvim-lsp",             -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",               -- Buffer source for nvim-cmp
            "hrsh7th/cmp-path",                 -- Path source for nvim-cmp
            "hrsh7th/cmp-cmdline",              -- Command-line completions
            "hrsh7th/vim-vsnip",                -- Snippet engine
            "hrsh7th/cmp-vsnip",                -- Snippet completions
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp = require("cmp")

            -- Autocompletion setup
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- For vsnip users
                    end,
                },
                mapping = {
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
                },
                sources = {
                    { name = "nvim_lsp" }, -- LSP completions
                    { name = "buffer" },   -- Buffer completions
                    { name = "path" },     -- Path completions
                },
            })

            -- Pyright setup
            lspconfig.pyright.setup({
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            })

            -- LSP Keybindings
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true }) -- Go to definition
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })       -- Hover documentation
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true }) -- Rename symbol
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true }) -- Code action
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true }) -- List references
        end,
    },
}

