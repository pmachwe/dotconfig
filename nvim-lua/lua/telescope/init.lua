
local opts = { noremap = true, silent = true }

-- Telescope basics
vim.api.nvim_set_keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

-- Find files in current directory
vim.api.nvim_set_keymap('n', '<Leader>fe', "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<CR>", opts)

-- Mappings for Tmux extension
vim.api.nvim_set_keymap('n', '<Leader>ftw', ":Telescope tmux windows<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>fts', ":Telescope tmux sessions<CR>", opts)
