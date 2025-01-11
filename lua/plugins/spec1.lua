return {
    {
        "rebelot/kanagawa.nvim", -- Plugin repository
        config = function()
            -- Kanagawa theme configuration
            require("kanagawa").setup({
                compile = false,             -- Enable compiling the colorscheme
                undercurl = true,            -- Enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,         -- Do not set background color
                dimInactive = false,         -- Dim inactive windows
                terminalColors = true,       -- Define terminal colors
                colors = {                   -- Add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- Add/modify highlights
                    return {}
                end,
                theme = "wave",              -- Load "wave" theme when 'background' option is not set
                background = {               -- Map the value of 'background' option to a theme
                    dark = "wave",           -- Try "dragon" for a different style!
                    light = "lotus"
                },
            })

            -- Apply the theme
            vim.cmd("colorscheme kanagawa")
        end,
    },
}

