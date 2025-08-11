return {
  -- Colorscheme
  -- {
  --   "zootedb0t/citruszest.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("citruszest").setup {
  --       -- transparent_background = true,
  --     }
  --     vim.cmd.colorscheme "citruszest"
  --   end,
  -- },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    lazy = false,
    config = function()
      require("oil").setup { skip_confirm_for_simple_edits = true }
    end,
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    config = function()
      require "configs.harpoon"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<CR>"] = { "fallback" },
        ["<C-b>"] = { "fallback" },
        ["<C-f>"] = { "fallback" },
        ["<Tab>"] = { "accept", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },

        -- ["<CR>"] = { "accept", "fallback" },
        -- ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        -- ["<C-f>"] = { "scroll_documentation_down", "fallback" },
        -- ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        -- ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "html",
        "css",
        "bash",
        "c",
        "cpp",
        "cmake",
        "rust",
        "python",
      },
    },
  },

-- disabled plugins
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },
}
