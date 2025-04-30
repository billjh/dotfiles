local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("Lilex Nerd Font Mono")
config.font_size = 15

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

-- config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
-- config.enable_scroll_bar = true
config.use_fancy_tab_bar = false
config.scrollback_lines = 100000

-- config.initial_cols = 80
-- config.initial_rows = 24

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
		key = 't',
		mods = 'SUPER',
		action = wezterm.action.SpawnCommandInNewTab { cwd = wezterm.home_dir },
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
	local screen = wezterm.gui.screens().main
	local ratio = 0.7
	local width, height = screen.width * ratio, screen.height * ratio
	local tab, pane, window = wezterm.mux.spawn_window({
		position = {
			x = (screen.width - width) / 2,
			y = (screen.height - height) / 2,
			origin = "MainScreen",
		}
	})
	-- window:gui_window():maximize()
	window:gui_window():set_inner_size(width, height)
end)

return config
