-- Basic mappings

local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>w', ':update<CR>', opts)
vim.api.nvim_set_keymap('i', '<Leader>w', '<Esc>:update<CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>.', ':b#<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>k', ':bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>o', ':only<CR>', opts)

vim.api.nvim_set_keymap('n', 'U', '<C-u>', opts)
vim.api.nvim_set_keymap('n', 'D', '<C-d>', opts)


-- Telescope
vim.api.nvim_set_keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fg",  "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fb",  "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
vim.api.nvim_set_keymap('n', "<leader>fh",  "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

-- Perforce
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pp", ":Vp4", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pe", ":Vp4Edit<CR>", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pa", ":Vp4Add<CR>", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pr", ":Vp4Revert<CR>", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pd", ":Vp4Describe ", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pc", ":Vp4Change", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>pi", ":Vp4Info<CR>", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>po", ":Vp4 opened<CR>", opts)
vim.api.nvim_set_keymap('n', "<buffer> <localleader>ps", ":Vp4 sync<CR>", opts)

-- Tmux Navigator
vim.api.nvim_set_keymap('n', '<A-h>', ':TmuxNavigateLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-j>', ':TmuxNavigateDown', opts)
vim.api.nvim_set_keymap('n', '<A-k>', ':TmuxNavigateUp', opts)
vim.api.nvim_set_keymap('n', '<A-l>', ':TmuxNavigateRight', opts)
vim.api.nvim_set_keymap('n', '<A-\\>', ':TmuxNavigatePrevious', opts)
