local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 15
config.font = wezterm.font "Iosevka Term"

config.color_scheme = 'Google (light) (terminal.sexy)'

-- make fonts less blurry
config.freetype_load_target = "Light"
config.freetype_load_flags = "FORCE_AUTOHINT"

config.enable_tab_bar = false

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.default_prog = { "tmux" }

return config
