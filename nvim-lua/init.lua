require('plugins')
require('settings')
require('nvim-cmp')
require('themes/nightfox')
require('lsp')
require('treesitter')
require('treesitter/context')
require('treesitter/rainbow')
require('plugins/lualine')
require('mappings')

-- Set theme
vim.cmd("colorscheme nordfox")

require('leap').set_default_keymaps()
