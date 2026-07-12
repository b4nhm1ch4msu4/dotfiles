vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
	skip_confirm_for_simple_edits = true,
	constrain_cursor = "name",
	float = {
		padding = 0,
	},
})

vim.keymap.set("n", "<leader>e", function()
	require("oil").toggle_float()
end, { desc = "Toggle oil" })
