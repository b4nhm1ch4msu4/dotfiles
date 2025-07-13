return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			cpp = { "clang_format" },
			c = { "clang_format" },
			bash = { "shfmt", "shellharden" },
			sh = { "shfmt", "shellharden" },
		},
	},
}
