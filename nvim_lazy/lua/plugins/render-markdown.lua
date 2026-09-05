return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		preset = "none",
		render_modes = true,
		anti_conceal = {
			enabled = true,
			-- disabled_modes = {"i"},
		},
		heading = {
			-- sign = false,
			position = "inline",
			icons = { "󰼏 ", "󰎨 ", "󰼑 ", "󰎲 ", "󰼓 ", "󰎴 " },
			width = "block",
			min_width = 50,
		},
		checkbox = {
			-- unchecked = { icon = '✘ ' },
			-- checked = { icon = '✔ ' },
			-- custom = { todo = { rendered = '◯ ' } },
			checkbox = { checked = { scope_highlight = "@markup.strikethrough" } },
		},
		callout = {
			todo = { raw = "[!TODO:]" },
		},
	},
}
