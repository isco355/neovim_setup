return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          --
          ["<C-w>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "quick terminal" },
          ["<Leader>rt"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "quick terminal" },
          ["t"] = { "<cmd>wa | 2TermExec cmd='r' size=80 direction=vertical<cr>", desc = "quick run(terminal)" },
          ["<Leader>w"] = { "<cmd>wa<cr>", desc = "save all files" },
          ["<Leader>ya"] = { "<cmd>%y+<cr>", desc = "yank all whole file" },
        },
      },
    },
  },
}
