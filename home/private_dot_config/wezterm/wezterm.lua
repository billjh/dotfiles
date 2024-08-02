local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("Lilex Nerd Font")
config.font_size = 15

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20

-- config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

config.initial_cols = 240
config.initial_rows = 60

config.keys = {
	{
		key = 'w',
		mods = 'SUPER',
		action = wezterm.action.CloseCurrentPane { confirm = false },
	},
	{
		key = 'e',
		mods = 'SUPER',
		action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
	},
	{
		key = 'e',
		mods = 'SUPER|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
	},
	{
		key = 'LeftArrow',
		mods = 'SUPER',
		action = wezterm.action.ActivatePaneDirection 'Left',
	},
	{
		key = 'RightArrow',
		mods = 'SUPER',
		action = wezterm.action.ActivatePaneDirection 'Right',
	},
	{
		key = 'UpArrow',
		mods = 'SUPER',
		action = wezterm.action.ActivatePaneDirection 'Up',
	},
	{
		key = 'DownArrow',
		mods = 'SUPER',
		action = wezterm.action.ActivatePaneDirection 'Down',
	},
}

wezterm.on("gui-startup", function()
	local tab, pane, window = wezterm.mux.spawn_window({
		position = { x = 0, y = 200 }
	})
	-- window:gui_window():maximize()
end)

return config
