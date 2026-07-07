vim.pack.add({ "https://github.com/folke/snacks.nvim" })

local picker_config = require("plugins.snacks.picker")
local dashboard_config = require("plugins.snacks.dashboard")

require("snacks").setup({
	picker = picker_config,
	dashboard = dashboard_config,
})
