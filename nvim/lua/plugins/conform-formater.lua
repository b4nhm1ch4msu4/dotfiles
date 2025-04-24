return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      bash = { "beautysh" },
      cpp = { "clang-format" },
      python = { "black" },
    },
  }
}
