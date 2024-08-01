local wezterm = require("wezterm")

local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.colors = theme.colors()
config.window_frame = theme.window_frame()

config.font_size = 17.0

config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

return config
