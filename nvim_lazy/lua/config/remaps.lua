local map = vim.keymap.set
map("n", "s", "<Nop>", { desc = "remove 's' keymap" })
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("i", "jk", "<Esc>", { desc = "Esc" })
map("n", ";", ":", { desc = "Command line" })
-- map("n", "<tab>", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "next buffer" })
-- map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "previous buffer" })
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "previous buffer" })
-- map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Move down by visual line" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Move up by visual line" })

-- useful edit keymaps
-- map("x", "<leader>p", [["_dP]], { desc = "Primeagen Copy" })
map("x", "p", [["_dP]], { desc = "Paste without copy" })
-- map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll plus zz" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll plus zz" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Down" })
map({ "n", "i", "v" }, "<C-c>", "<Esc>", { desc = "Esc" })
map("v", "<", "<gv")
map("v", ">", ">gv")

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

-- move over a closing element in insert mode
map("i", "<C-j>", function()
  local closers = { ")", "]", "}", ">", "'", '"', "`", "," }
  local line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local after = line:sub(col + 1, -1)
  local closer_col = #after + 1
  local closer_i = nil
  for i, closer in ipairs(closers) do
    local cur_index, _ = after:find(closer)
    if cur_index and (cur_index < closer_col) then
      closer_col = cur_index
      closer_i = i
    end
  end
  if closer_i then
    vim.api.nvim_win_set_cursor(0, { row, col + closer_col })
  else
    vim.api.nvim_win_set_cursor(0, { row, col + 1 })
  end
end, { desc = "move over a closing element" })

map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
map('n', '<leader>td', function()
  local enabled = vim.diagnostic.is_enabled()
  vim.diagnostic.enable(not enabled)
end, { desc = 'Toggle diagnostics' })

