local M = {}
vim.keymap.set({ "n", "x" }, "<leader>tt", function()
  Snacks.terminal.toggle()
  -- Snacks.terminal.toggle(nil,{win = {position = "float", border = "rounded"}})
end, { desc = "Toggle term" })
return M
