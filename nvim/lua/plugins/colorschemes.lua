return {
	"zootedb0t/citruszest.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("citruszest").setup({
			-- transparent_background = true,
		})
		vim.cmd.colorscheme("citruszest")
	end,
}
