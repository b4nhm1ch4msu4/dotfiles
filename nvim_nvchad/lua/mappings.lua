require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>e", function()
	require("oil").toggle_float()
end, { desc = "Oil toggle window" })

-- Useful edit keymaps
map("x", "<leader>p", [["_dP]], { desc = "Primeagen Paste" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll plus zz" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll plus zz" })
map("n", "n", "nzzzv", { desc = "next find item plus zz" })
map("n", "N", "Nzzzv", { desc = "prev find item plus zz" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Down" })
map({ "n", "v" }, "<leader>sa", "ggVG", { desc = "Select All" })
