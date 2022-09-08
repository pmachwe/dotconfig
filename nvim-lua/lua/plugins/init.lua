return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'p00f/nvim-ts-rainbow'

  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'quangnguyen30192/cmp-nvim-tags'
  use 'hrsh7th/nvim-cmp'

  -- For luasnip users.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Colorscheme
  use "EdenEast/nightfox.nvim"

  -- Status line
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- General utilities
  use 'ggandor/leap.nvim' -- sneak movement
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-commentary'
  use 'machakann/vim-highlightedyank'
  use 'tpope/vim-dispatch'
  use 'junegunn/vim-peekaboo'
  use 'preservim/tagbar'
  use 'ngemily/vim-vp4'
  use 'christoomey/vim-tmux-navigator'

  use {
      'nmac427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
  }

end)
