require('plugins')
require('settings')
require('mappings')
require('nvim-cmp')
require('themes/nightfox')
require('lsp')
require('treesitter')

-- Set theme
vim.cmd("colorscheme nightfox")

require('leap').set_default_keymaps()
