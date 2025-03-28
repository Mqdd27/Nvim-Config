-- transparent background
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
require('themify').setup({
	-- Your list of colorschemes.
	'AlphaTechnolog/pywal.nvim',
	'folke/tokyonight.nvim',
	'sho-87/kanagawa-paper.nvim',
	'nyoom-engineering/oxocarbon.nvim',
	'glepnir/zephyr-nvim',
	'ribru17/bamboo.nvim',
	"https://gitlab.com/bartekjaszczak/luma-nvim",
	'Mofiqul/dracula.nvim',
	'default'
})
