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

-- modify nvim config
map("n", "<leader>fc", function()
  require("telescope.builtin").find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "Telescope config files" })

-- toggle diagnostic
map(
  "n",
  "<leader>dt",
  ":lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>",
  { desc = "Toggle Diagnostic", silent = true }
)

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-b>")
nomap("i", "<C-e>")
nomap("i", "<C-h>")
nomap("i", "<C-l>")
nomap("i", "<C-j>")
nomap("i", "<C-k>")

nomap("n", "<C-h>")
nomap("n", "<C-l>")
nomap("n", "<C-j>")
nomap("n", "<C-k>")
nomap("n", "<C-s>")
nomap("n", "<C-c>")
nomap("n", "<leader>b")
nomap("n", "<C-n>")
