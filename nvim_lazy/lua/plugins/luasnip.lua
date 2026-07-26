return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
	lazy = true,
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		vim.cmd([[
    " Use Tab to expand and jump through snippets
    imap <silent><expr> <C-l> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-l>' 
    smap <silent><expr> <C-l> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-l>'

    " Use Shift-Tab to jump backwards through snippets
    imap <silent><expr> <C-h> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-h>'
    smap <silent><expr> <C-h> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-h>'
]])
		require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/LuaSnip" })
	end,
}
