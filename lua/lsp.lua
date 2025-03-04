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

require("which-key").setup()

