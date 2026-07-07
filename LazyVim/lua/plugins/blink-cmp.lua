return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["C-y"] = { "accept" },
      ["<Tab>"] = {},
      ["<S-Tab>"] = {},
      ['<C-l>'] = { 'snippet_forward', 'fallback' },
      ['<C-h>'] = { 'snippet_backward', 'fallback' },
    },
    -- snippets = {
    --   preset = "luasnip",
    -- },
  },
}
