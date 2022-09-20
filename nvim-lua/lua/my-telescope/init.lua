
local opts = { noremap = true, silent = true }

-- Telescope basics
vim.api.nvim_set_keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
vim.api.nvim_set_keymap('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

-- Find files in current directory
vim.api.nvim_set_keymap('n', '<Leader>fe', "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<CR>", opts)

-- Mappings for Tmux extension
vim.api.nvim_set_keymap('n', '<Leader>ftw', ":Telescope tmux windows<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>fts', ":Telescope tmux sessions<CR>", opts)

-- Neoclip
local ts = require('telescope')
ts.load_extension('neoclip')
vim.api.nvim_set_keymap('n', '<Leader>fr', ":Telescope neoclip<CR>", opts)

-- Fzf-native
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
-- ts.setup {
--   extensions = {
--     fzf = {
--       fuzzy = true,                    -- false will only do exact matching
--       override_generic_sorter = true,  -- override the generic sorter
--       override_file_sorter = true,     -- override the file sorter
--       case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
--                                        -- the default case_mode is "smart_case"
--     }
--   }
-- }
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
ts.load_extension('fzf')

-- P4 files
ts.load_extension('vim_p4_files')
vim.api.nvim_set_keymap('n', '<Leader>fp', ":Telescope vim_p4_files<CR>", opts)

-- Telescope customization
local actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    mappings = {
      i = {
          -- C-g to quit Telescope
          ["<C-g>"] = actions.close,
          -- Clear prompt
          ["<C-u>"] = false
      },
    },
  }
}

M = {}

-- Find Nvim config files
M.find_nvim_config = function()
    local opts = {}
    opts.prompt_title = "Nvim Config"
    opts.path_display = { "smart" }
    opts.cwd = "~/.config/nvim"
    require("telescope.builtin").find_files { opts }
end

vim.api.nvim_set_keymap('n', "<leader>fi", "<cmd>lua M.find_nvim_config()<CR>", opts)
return M

