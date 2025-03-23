local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

require("packer").init({
	disable_commands = false,
})

require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-treesitter/nvim-treesitter"
	use "hrsh7th/nvim-cmp"
	use "folke/which-key.nvim"
	use "nvim-tree/nvim-web-devicons"
	use "echasnovski/mini.icons"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig"
	use "numToStr/Comment.nvim"
	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'nvim-tree/nvim-tree.lua',config = function() require("nvim-tree").setup() end }
	use "jose-elias-alvarez/null-ls.nvim"
	use "AlphaTechnolog/pywal.nvim"
	use { "windwp/nvim-autopairs", event = "InsertEnter", config = function() require("nvim-autopairs").setup() end }
	use "lewis6991/gitsigns.nvim"
	use "mfussenegger/nvim-lint"
	use 'jwalton512/vim-blade'
	use {
		"monkoose/neocodeium",
		config = function()
			local neocodeium = require("neocodeium")
			neocodeium.setup()
		end
	}
	use { 'tpope/vim-fugitive' }
	use 'romgrk/barbar.nvim'
	use {
		'lmantw/themify.nvim',

		config = {}
	}
end)

