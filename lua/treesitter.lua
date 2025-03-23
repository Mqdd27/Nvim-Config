require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "javascript", "typescript", "python", "html", "css", "php", "json", "yaml", "blade"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

