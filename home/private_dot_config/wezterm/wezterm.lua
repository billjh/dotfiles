local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font 'Lilex Nerd Font'
config.font_size = 15

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'RESIZE'

wezterm.on("gui-startup", function()
    local tab, pane, window = wezterm.mux.spawn_window {}
    window:gui_window():maximize()
end)

return config

