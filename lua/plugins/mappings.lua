return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- Enter seen under group name "Buffer"
          --
          --
          ["<leader>rr"] = { "<cmd>AstroReload<cr>", desc = "AstroReload" },
          ["t"] = { "<cmd>wa | 2TermExec cmd='r' size=80 direction=vertical<cr>", desc = "quick run(terminal)" },
          ["<Leader>rt"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "quick terminal" },
          ["<Leader>w"] = { "<cmd>wa<cr>", desc = "save all files" },
          ["<Leader>ya"] = { "<cmd>%y+<cr>", desc = "yank all whole file" },
          ["<Leader>yr"] = { "<cmd>:g/print/delete | %y+<cr>  ", desc = "delete print" },
          ["<leader>("] = { "<cmd>/(<CR>", desc = "jump" },
          ["<Leader>{"] = { "<cmd>/{<CR>", desc = "jump" },
          ["<C-A>"] = { "<cmd> bp <CR>", desc = "previous buffer" },
          ["<C-S>"] = { "<cmd> bn <CR>", desc = "next buffer" },
          -- ["<C-s>"] = { "<cmd>bn<cr>", desc = "forward buffer" },
        },
      },
    },
  },
}
