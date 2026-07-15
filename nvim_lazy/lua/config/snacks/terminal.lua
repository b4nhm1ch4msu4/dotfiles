local M = {}
-- local opts = {}
-- opts.win = { position = "float", border = "rounded" }
-- opts.vim.v.count1 = "f"
vim.keymap.set({ "n", "t" }, "<A-i>", function()
	Snacks.terminal.toggle(nil, { win = { position = "float", border = "rounded" }, count = 1 })
end, { desc = "Toggle term" })

vim.keymap.set({ "n", "t" }, "<A-h>", function()
	Snacks.terminal.toggle(nil, { win = { position = "bottom", border = "rounded" }, count = 2 })
end, { desc = "Toggle term" })
--
-- vim.keymap.set({ "n", "t" }, "<A-t>", function()
-- 	Snacks.terminal.toggle(nil, { win = { position = "top", border = "rounded" }, count = 4 })
-- end, { desc = "Toggle term" })
--
-- vim.keymap.set({ "n", "t" }, "<A-r>", function()
-- 	Snacks.terminal.toggle(nil, { win = { position = "right", border = "rounded" }, count = 5 })
-- end, { desc = "Toggle term" })
--
-- vim.keymap.set({ "n", "t" }, "<A-l>", function()
-- 	Snacks.terminal.toggle(nil, { win = { position = "left", border = "rounded" }, count = 6 })
-- end, { desc = "Toggle term" })

return M
