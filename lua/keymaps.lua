local map = vim.api.nvim_set_keymap
local vmap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- other
map('n', 'x', '"_x', opts) -- don't copy deleted text
map('v', '<A-c>', '"+y', opts)
map("n", "<A-v>", '"+p', opts)
map("i", "<A-v>", '<C-r>+', opts)
map("v", "<A-v>", '"+p', opts)

vmap("v", "J", ":m '>+1<CR>gv=gv")
vmap("v", "K", ":m '<-2<CR>gv=gv")

vmap("n", "<C-d>", "<C-d>zz")
vmap("n", "<C-u>", "<C-u>zz")

vmap("n", "n", "nzzzv")
vmap("n", "N", "Nzzzv")

-- window management
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)


-- Telescope
local actions = require("telescope.actions")
local telescope = require("telescope")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = actions.move_selection_worse,
				["<C-l>"] = actions.move_selection_better,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-S-j>"] = actions.preview_scrolling_down,
				["<C-S-k>"] = actions.preview_scrolling_up,
			},
			n = {
				["<C-h>"] = actions.move_selection_worse,
				["<C-l>"] = actions.move_selection_better,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-S-j>"] = actions.preview_scrolling_down,
				["<C-S-k>"] = actions.preview_scrolling_up,
			}
		}
	}
})

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- File Explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Codeium Keybinding
-- vim.keymap.set("i", "<A-l>", function() require("neocodeium").accept() end, { noremap = true, silent = true })
vmap("i", "<A-f>", function()
	require("neocodeium").accept()
end)
vmap("i", "<A-w>", function()
	require("neocodeium").accept_word()
end)
vmap("i", "<A-a>", function()
	require("neocodeium").accept_line()
end)
vmap("i", "<A-e>", function()
	require("neocodeium").cycle_or_complete()
end)
vmap("i", "<A-r>", function()
	require("neocodeium").cycle_or_complete(-1)
end)
vmap("i", "<A-c>", function()
	require("neocodeium").clear()
end)

-- Barbar
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)


-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)

-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Git
map('n', '<leader>git', '<Cmd>Git<CR>', opts)
map('n', '<leader>gtc', '<Cmd>Git commit<CR>', opts)
map('n', '<leader>gtf', '<Cmd>Git pull<CR>', opts)
map('n', '<leader>gtp', '<Cmd>Git push<CR>', opts)
map('n', '<leader>gtb', '<Cmd>Git branch<CR>', opts)
map('n', '<leader>gts', '<Cmd>Git status<CR>', opts)
map('n', '<leader>gtd', '<Cmd>Git diff<CR>', opts)

-- Treesitter
map("n", "gnn", ":TSIncrementalSelection<CR>", opts)
map("n", "grn", ":TSNodeIncremental<CR>", opts)
map("n", "grm", ":TSNodeDecremental<CR>", opts)

--Themify
map("n", "<leader>th", ":Themify<CR>", opts)
