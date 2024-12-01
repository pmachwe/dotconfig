local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config = {
    automatically_reload_config = true,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    enable_tab_bar = false,
    use_fancy_tab_bar = false,
    tab_bar_at_bottom = false,
    window_padding = {
        left = 4,
        right = 4,
        top = 2,
        bottom = 2,
    },
    font = wezterm.font 'Geist Mono',
    font_size = 16,
    color_scheme = 'nightfox',
}

return config
