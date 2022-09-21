local ts = require('telescope')

ts.load_extension('neoclip') -- Yanked text
ts.load_extension('fzf') -- Faster fuzzy written in C
ts.load_extension('vim_p4_files')

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

return M

