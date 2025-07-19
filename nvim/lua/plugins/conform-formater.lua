return {
	"stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
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
