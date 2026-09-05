local M = {}
vim.keymap.set("n", "<leader>fe", function()
	Snacks.explorer()
end, { desc = "Toggle snack explorer" })
return M
