return {
	"Exafunction/codeium.nvim",
	enabled = false,
	dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" },
	event = "InsertEnter",
	config = function()
		require("codeium").setup({
			virtual_text = { enabled = true, key_bindings = { accept = "<A-y>" } },
		})
	end,
}
