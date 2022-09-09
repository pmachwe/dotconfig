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

vim.api.nvim_set_keymap('', '<A-l>', '<C-w>l', opts)
vim.api.nvim_set_keymap('', '<A-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('', '<A-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('', '<A-h>', '<C-w>h', opts)

-- Telescope
vim.api.nvim_set_keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

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
vim.api.nvim_set_keymap('n', '<A-j>', ':TmuxNavigateDown<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-k>', ':TmuxNavigateUp<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-l>', ':TmuxNavigateRight<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-\\>', ':TmuxNavigatePrevious<CR>', opts)

-- Quickfix
vim.api.nvim_set_keymap('n', '<leader>qo', ':copen<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qc', ':cclose<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qn', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qp', ':cprevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ql', ':clast<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qf', ':cfirst<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qh', ':chistory<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-n>', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-p>', ':cprevious<CR>', opts)

-- Floaterm
vim.api.nvim_set_keymap('n', '\\t', ':FloatermToggle<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-\\><C-n>\\t', ':FloatermToggle<CR>', opts)
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
