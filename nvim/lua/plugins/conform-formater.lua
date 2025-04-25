return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = {"lua-format"},
            python = {"black"},
            cpp = {"clang_format"},
            c = {"clang_format"},
            bash = {"beautysh"}
        }
    }
}
