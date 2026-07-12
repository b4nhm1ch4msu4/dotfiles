local picker = require("config.snacks.picker")
local dashboard = require("config.snacks.dashboard")
local indent = require("config.snacks.indent")
local notifier = require("config.snacks.notifier")

return {
	"folke/snacks.nvim",
	---@type snacks.Config
	priority = 1000, -- make sure to load this before all the other start plugins
	opts = {
		picker = picker,
		dashboard = dashboard,
		indent = indent,
		notifier = notifier,
	},
}
