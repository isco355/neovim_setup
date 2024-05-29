-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

  vim.api.nvim_create_autocmd("VimEnter", {
    command = "Neotree toggle",
  })


vim.o.timeoutlen = 100

require("neo-tree").setup({
   window = {
        position = "right",} 
})

vim.keymap.set(
	{ "n", "o", "x" },
	"w",
	"<cmd>lua require('spider').motion('w')<CR>",
	{ desc = "Spider-w" }
)
vim.keymap.set(
	{ "n", "o", "x" },
	"e",
	"<cmd>lua require('spider').motion('e')<CR>",
	{ desc = "Spider-e" }
)
vim.keymap.set(
	{ "n", "o", "x" },
	"b",
	"<cmd>lua require('spider').motion('b')<CR>",
	{ desc = "Spider-b" }
)

require("neo-tree").setup({
  filesystem = {
    window = {
      mappings = {
        ["o"] = "system_open",
      },
    },
  },
  commands = {
    system_open = function(state)
      local node = state.tree:get_node()
      local path = node:get_id()
      -- macOs: open file in default application in the background.
      vim.fn.jobstart({ "open", "-g", path }, { detach = true })
  local p
  local lastSlashIndex = path:match("^.+()\\[^\\]*$") -- Match the last slash and everything before it
  if lastSlashIndex then
  	p = path:sub(1, lastSlashIndex - 1) -- Extract substring before the last slash
  else
  	p = path -- If no slash found, return original path
      end
  vim.cmd("silent !start explorer " .. p)
    end,
  },
})
 
