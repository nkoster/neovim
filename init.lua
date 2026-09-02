-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.spell = false

vim.diagnostic.config({
  underline = false,
})

vim.opt.clipboard = "unnamedplus"
