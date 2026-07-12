vim.pack.add({ "https://github.com/folke/snacks.nvim" })

local picker = require("plugins.snacks.picker")
local dashboard = require("plugins.snacks.dashboard")
local indent = require("plugins.snacks.indent")
local notifier = require("plugins.snacks.notifier")
-- local statuscolumn = require("plugins.snacks.statuscolumn")

require("snacks").setup({
	picker = picker,
	dashboard = dashboard,
  indent = indent,
  notifier = notifier,
  -- statuscolumn = statuscolumn,
})
