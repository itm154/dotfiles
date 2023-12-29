local wezterm = require("wezterm")
local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16
config.warn_about_missing_glyphs = false

config.tab_bar_at_bottom = true
config.window_frame = window_frame

config.hide_tab_bar_if_only_one_tab = true
config.colors = colors

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

config.keys = {
	{
		key = "T",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab("DefaultDomain"),
	},
	{
		key = "J",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

return config
