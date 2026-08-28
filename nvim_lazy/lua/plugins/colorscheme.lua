return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent = true,
	-- 	},
	-- 	config = function()
	-- 		vim.cmd("colorscheme tokyonight-storm")
	--
	-- 	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 	--   vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
	-- 	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	-- 	-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
	-- 	-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
	-- 	-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
	-- 	-- vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none", nocombine = true })
	-- 	-- vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#316c71", bg = "none", nocombine = true })
	-- 	end,
	-- },

	{
		"zootedb0t/citruszest.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme citruszest")
		end,
	},
}
