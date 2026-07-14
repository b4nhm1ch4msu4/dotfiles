local terminal_opts = {
  cwd = "C:\\workspace",
  auto_close = false,
  win = {
    border = "rounded",
    width = 0.9,
    height = 0.9,
  },
}

local function robot_run_current_file()
  local path = vim.fn.expand("%:p")
  local cmd = "robot -A robot.args " .. path
  vim.fn.setreg("+", cmd)
  vim.notify("Copied cmd: " .. cmd)
  -- Snacks.terminal("robot -A robot.args " .. path, terminal_opts)
end
local function robot_run_flash()
  --  TODO: Script file path
  local path = vim.fn.expand("%:p")

  local prompts = {
    "BUILD_DATE",
    "SVT_IMAGE_PATH",
    "PDX_FILE_NAME",
    "BAM_VERSION",
    "NAD_VERSION",
    "WUC_VERSION",
  }

  local args = {}

  for _, key in ipairs(prompts) do
    local value = vim.trim(vim.fn.input(key .. ": "))

    if value ~= "" then
      table.insert(args, ("-v %s:%q"):format(key, value))
    end
  end

  local cmd = string.format('pwsh -Command "robot -A robot.args %s %q"', table.concat(args, " "), path)
  vim.fn.setreg("+", cmd)
  vim.notify("Copied cmd: " .. cmd)

  -- Snacks.terminal(cmd, terminal_opts)
end

--- Keymaps
local map = vim.keymap.set

-- Run robot command
map("n", "<leader>rc", robot_run_current_file, { desc = "[R]obot [c]urrent test cmd" })

map("n", "<leader>rf", robot_run_flash, { desc = "Robot [f]lash cmd" })

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

--- Whichkey  ---
require("which-key").add({
  { "<leader>r", group = "Robot Utils", buffer = 0, icon = "🤖" },
  { "<leader>y", group = "Yank file path", buffer = 0 },
})

-- require("luasnip.loaders.from_lua").lazy_load({
--   path = vim.fn.stdpath("config") .. "\\snippets",
-- })

-- Options
vim.bo.commentstring = '# %s'
-- Indenting
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
