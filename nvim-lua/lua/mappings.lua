-- Basic mappings

local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>w', ':update<CR>', opts)
vim.api.nvim_set_keymap('i', '<Leader>w', ':update<CR>', opts)

-- Telescope
vim.api.nvim_set_keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fg",  "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fb",  "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fh",  "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
