local nightfox = require('nightfox')

nightfox.setup({
  options = {
    terminal_colors = true,
    alt_nc = true,
    transparent = true,
    styles = {
      comments = "italic",
      keywords = "italic"
    },
    inverse = {
      match_paren = false,
      visual = false,
      search = false
    }
  }
})

-- nightfox.load()
