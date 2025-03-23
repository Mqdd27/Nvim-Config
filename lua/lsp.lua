require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "bashls", "lua_ls", "ts_ls", "html", "cssls", "jsonls", "tailwindcss", "intelephense" }
})

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup{}
lspconfig.bashls.setup{}
lspconfig.lua_ls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.jsonls.setup{}
lspconfig.tailwindcss.setup{}
lspconfig.intelephense.setup{}


local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.blade_formatter,
	},
})

-- Autoformat saat save untuk Blade
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.blade.php",
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})

require("which-key").setup()
