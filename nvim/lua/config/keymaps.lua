-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", ";", ":", { desc = "quit" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "previous buffer" })

-- useful edit keymaps
-- map("x", "<leader>p", [["_dP]], { desc = "Primeagen Copy" })
map("x", "p", [["_dP]], { desc = "Primeagen Copy" })
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll plus zz" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll plus zz" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Down" })
map({ "n", "i", "v" }, "<C-c>", "<Esc>", { desc = "Esc" })

-- Copy absolute file path
map("n", "<leader>yp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied file path: " .. path)
end, { desc = "Copy absolute file path" })

-- Copy absolute directory path
map("n", "<leader>yd", function()
  local dir = vim.fn.expand("%:p:h")
  vim.fn.setreg("+", dir)
  vim.notify("Copied directory path: " .. dir)
end, { desc = "Copy directory path" })

-- Copy file name (without extension)
map("n", "<leader>yf", function()
  local filename = vim.fn.expand("%:t:r")
  vim.fn.setreg("+", filename)
  vim.notify("Copied file name: " .. filename)
end, { desc = "Copy file name" })

