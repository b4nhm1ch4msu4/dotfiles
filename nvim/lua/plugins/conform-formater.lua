return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				cpp = { "clang_format" },
				c = { "clang_format" },
				bash = { "shfmt", "shellharden" },
				sh = { "shfmt", "shellharden" },
			},
		})
		vim.keymap.set(
			"n",
			"<leader>fm",
			"<cmd>lua require('conform').format({ lsp_fallback = true })<cr>",
			{ desc = "conform format file" }
		)
	end,
}
