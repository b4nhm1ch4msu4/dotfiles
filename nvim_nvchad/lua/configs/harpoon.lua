local harpoon = require "harpoon"
harpoon:setup { settings = { save_on_toggle = true } }

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<leader>l", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Set <space>1..<space>5 be my shortcuts to moving to the files
for _, idx in ipairs { 1, 2, 3, 4, 5 } do
  vim.keymap.set("n", string.format("<space>%d", idx), function()
    harpoon:list():select(idx)
  end)
end
