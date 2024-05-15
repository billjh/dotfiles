local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("Lilex Nerd Font")
config.font_size = 15

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

config.initial_cols = 240
config.initial_rows = 60

wezterm.on("gui-startup", function()
	local tab, pane, window = wezterm.mux.spawn_window({
		position={x=0,y=200}
	})
	-- window:gui_window():maximize()
end)

return config
