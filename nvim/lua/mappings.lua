local map = vim.keymap.set

map("n", ";", ":", { desc = "colon" })

-- Add ; at the end of line
map({"n", "i"}, "<leader>;","<Esc>A;<Esc>",{desc = "append ;", noremap = true, silent = true})

-- Clear highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Switch windows
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- -- Swich buffer
-- map("n", "<leader>bn", "<cmd>bn<CR>", { desc = "next buffer" })
-- map("n", "<leader>bp", "<cmd>bp<CR>", { desc = "previous buffer" })
-- -- Close buffer
-- map("n", "<leader>bd", "<cmd>bd<CR>", { desc = "close buffer" })

-- rebind j/k with gj/gk
map("n", "j", function()
	return vim.v.count == 0 and "gj" or "j"
end, { expr = true, noremap = true })
map("n", "k", function()
	return vim.v.count == 0 and "gk" or "k"
end, { expr = true, noremap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Useful edit keymaps
map("x", "<leader>p", [["_dP]], { desc = "Primeagen Paste" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll plus zz" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll plus zz" })
map("n", "n", "nzzzv", { desc = "next find item plus zz" })
map("n", "N", "Nzzzv", { desc = "prev find item plus zz" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Down" })
map({ "n", "v" }, "<leader>sa", "ggVG", { desc = "Select All" })

-- Disable diagnostic
map(
	"n",
	"<leader>ud",
	":lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>",
	{ desc = "Toggle Diagnostic", silent = true }
)
map("n", "]]", "<cmd>:lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
map("n", "[[", "<cmd>:lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Oil file explorer
map("n", "<leader>e", function()
	require("oil").toggle_float()
end, { desc = "Oil toggle window" })

-- Format file
-- map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { desc = "default format file" })

-- Conform formater
map("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "conform format file" })

-- Luasnip
local ls = require("luasnip")

map({ "i" }, "<C-K>", function()
	ls.expand()
end, { silent = true, desc = "Luasnip expand" })
map({ "i", "s" }, "<C-L>", function()
	ls.jump(1)
end, { silent = true, desc = "Luasnip jump forward" })
map({ "i", "s" }, "<C-H>", function()
	ls.jump(-1)
end, { silent = true, desc = "Luasnip jump backward" })
map({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })
