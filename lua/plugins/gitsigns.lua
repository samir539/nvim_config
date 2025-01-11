return {
  {
    "lewis6991/gitsigns.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup({
        -- Configuration options
        signs = {
          add = { text = "│" },    -- Green marker for added lines
          change = { text = "│" }, -- Yellow marker for changed lines
          delete = { text = "_" }, -- Red marker for deleted lines
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        current_line_blame = true, -- Show blame info for the current line
      })
    end,
  },
}

