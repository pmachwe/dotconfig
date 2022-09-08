-- Basic mappings

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>w', ':update<CR>', opts)

-- Telescope
