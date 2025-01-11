return {
  {
    "nvim-tree/nvim-tree.lua", -- File tree plugin
    lazy = true,               -- Lazy load the plugin
    cmd = { "NvimTreeToggle", "NvimTreeFocus" }, -- Commands to trigger loading
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Optional for file icons
    },
    config = function()
      require("nvim-tree").setup({
        disable_netrw = true,       -- Disable netrw
        hijack_netrw = true,        -- Replace netrw with nvim-tree
        open_on_setup_file = false,      -- Do not auto-open nvim-tree on startup
        renderer = {
          highlight_git = true,     -- Highlight Git changes
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
          },
        },
        view = {
          width = 30,               -- Width of the tree
          side = "left",            -- Position (left or right)
        },
      })
    end,
  },
}

