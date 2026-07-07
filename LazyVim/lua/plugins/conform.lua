return {
  "https://github.com/stevearc/conform.nvim",
  opts = {
    formatters = {
      robocop = {
        command = "robocop",
        -- A list of strings, or a function that returns a list of strings
        -- Return a single string instead of a list to run the command in a shell
        args = {
          "format",
          "--configure",
          "NormalizeTags.enabled=False",
          "--configure",
          "MergeAndOrderSections.create_comment_section=False",
          "$FILENAME",
        },
        stdin = false,
        range_args = function(self, ctx)
          return { "format", "--start-line", ctx.range.start[1], "--end-line", ctx.range["end"][1], "$FILENAME" }
        end,
      },
    },
    formatters_by_ft = {
      robot = { "robocop" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
  },
}
