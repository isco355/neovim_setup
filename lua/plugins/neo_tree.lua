return {
  "nvim-neo-tree/neo-tree.nvim",

  cmd = "Neotree",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  opts = {

    sources = { "filesystem", "buffers", "git_status" },
    window = { position = "right", width = 60, mapping = {
      ["t"] = "close",
    } },
    filesystem = {
      filtered_items = {
        hide_gitignored = true,
        hide_hidden = false,
        hide_dotfiles = false,
        -- hide_by_name = {
        -- "node_modules",
        -- "assets",
        -- "__pycache__",
        -- },
      },
    },
  },
}
