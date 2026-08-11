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
		local ls = require("luasnip")

		-- Expand or jump forward with <C-l>
		vim.keymap.set({ "i", "s" }, "<C-l>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })

		-- Jump backward with <>C-h>
		vim.keymap.set({ "i", "s" }, "<C-h>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })

		-- load user snippet
		require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/LuaSnip" })
	end,
}
