vim.g.mapleader = " " --map leader to space
vim.g.maplocalleader = " " --map leader to space
vim.o.number = true
vim.o.ignorecase = false  -- Disable case-insensitive
vim.o.smartcase = false   -- Disable smart case
vim.opt.smartindent = true -- Smart Indent
vim.opt.shiftwidth = 4   -- Change indent width
vim.opt.tabstop = 4      -- Indent width


require("keymaps")
require("plugins")
require("colorscheme")
require("lsp")
require("treesitter")
-- require("ui")
