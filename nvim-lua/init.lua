require('plugins')
require('settings')
require('mappings')
require('nvim-cmp')
require('themes/nightfox')
require('lsp')
require('treesitter')
require('treesitter/context')
require('treesitter/rainbow')
require('plugins/lualine')

-- Set theme
vim.cmd("colorscheme nordfox")

require('leap').set_default_keymaps()
