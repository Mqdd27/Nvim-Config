vim.g.mapleader = " "      --map leader to space
vim.g.maplocalleader = " " --map leader to space
vim.o.number = true
vim.o.ignorecase = true    -- search case-insensitive
vim.o.smartcase = true     -- smart case
vim.opt.smartindent = true -- Smart Indent
vim.opt.shiftwidth = 4     -- Change indent width
vim.opt.tabstop = 4        -- Indent width
vim.opt.incsearch = true
-- vim.opt.hlsearch = false
vim.opt.termguicolors = true

require("keymaps")
require("plugins")
require("colorscheme")
require("lsp")
require("autocompletion")
require("treesitter")
-- require("ui")
