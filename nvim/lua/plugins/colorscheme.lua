return {
  -- add gruvbox
  {
    "zootedb0t/citruszest.nvim",
    opts = {
      option = {
        transparent = true, -- Enable/Disable transparency
        bold = true,
        italic = true,
      },
    },
  },
  -- { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "citruszest",
    },
  },
}
