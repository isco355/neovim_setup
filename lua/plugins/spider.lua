-- lazy.nvim
return {
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
    opts = {
      skipInsignificantPunctuation = true,
      subwordMovement = true,
      customPatterns = {}, -- check "Custom Movement Patterns" in the README for details
    },
  },
}
