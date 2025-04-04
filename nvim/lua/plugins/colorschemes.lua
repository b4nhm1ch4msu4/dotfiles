return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	-- priority = 1000, -- Make sure to load this before all the other start plugins.
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			styles = {
	-- 				comments = { italic = true },
	-- 			},
	-- 		})
	-- 		-- vim.cmd.colorscheme 'tokyonight-night'
	-- 	end,
	-- },
	-- {
	--   "bluz71/vim-moonfly-colors",
	--   name = "moonfly",
	--   lazy = false,
	--   priority = 1000
	-- },
	{
		"zootedb0t/citruszest.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("citruszest").setup({
				-- transparent_background = true,
			})
			vim.cmd.colorscheme("citruszest")
		end,
	},
}
