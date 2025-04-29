return {
    "saghen/blink.cmp",
    dependencies = {"rafamadriz/friendly-snippets"},
    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "default",
            ['<Tab>'] = {'select_and_accept', 'fallback'},
        },
        appearance = {nerd_font_variant = "mono"},
        completion = {
            menu = {draw = {gap = 2}, border = "rounded"},
            documentation = {window = {border = "rounded"}, auto_show = false}
        },
        signature = {enabled = false, window = {border = "rounded"}},
        sources = {
            default = {"lazydev", "lsp", "path", "snippets", "buffer"},
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100
                }
            }
        },
        fuzzy = {implementation = "prefer_rust_with_warning"}
    },
    opts_extend = {"sources.default"}
}
