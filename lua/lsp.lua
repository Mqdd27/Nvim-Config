require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "bashls", "lua_ls", "ts_ls", "html", "cssls", "jsonls", "tailwindcss", "intelephense" }
})

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {}
lspconfig.bashls.setup {}
lspconfig.lua_ls.setup {}
lspconfig.html.setup {}
lspconfig.cssls.setup {}
lspconfig.jsonls.setup {}
lspconfig.tailwindcss.setup {}
lspconfig.intelephense.setup {}


local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.blade_formatter,
		null_ls.builtins.formatting.prettier.with({
			filetypes = {
				"blade.php",
				"php",
				"html",
				"css",
				"scss",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"json",
				"graphql",
				"markdown",
				"vue",
			}
		}),
		null_ls.builtins.diagnostics.phpstan,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.stylelint,
	},
})

-- Autoformat saat save untuk Blade
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.blade.php",
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.php", "*.blade.php", "*.js", "*.ts", "*.json", "*.css", "*.lua", "*.sh", "*.html" },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

require("which-key").setup()
