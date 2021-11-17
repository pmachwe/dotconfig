local function GetCurrFunc()
  return vim.api.nvim_eval([[tagbar#currenttag('%s','','f')]])
end

local function GetP4Client()
  return os.getenv("P4CLIENT")
end

require('lualine').setup {
  options = {theme = 'tokyonight'},
  extensions = {'quickfix', 'fzf', 'nerdtree'},
  sections = {
    lualine_c = {'filename', GetCurrFunc},
    lualine_x = {GetP4Client, 'fileformat', 'filetype'}
  }
}
