return {
	"L3MON4D3/LuaSnip",
	enabled = false,
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	event = "InsertEnter",
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		require("luasnip").config.set_config({ -- Setting LuaSnip config
			enable_autosnippets = true,
			store_selection_keys = "<Tab>",
		})
		require("luasnip.loaders.from_lua").load({
			paths = "~/.config/nvim/lua/config/LuaSnip/",
		})
		vim.keymap.set({ "i" }, "<C-e>", function()
			require("luasnip").expand()
		end, { silent = true, desc = "Luasnip expand" })
		vim.keymap.set({ "i", "s" }, "<C-n>", function()
			require("luasnip").jump(1)
		end, { silent = true, desc = "Luasnip jump forward" })
		vim.keymap.set({ "i", "s" }, "<C-p>", function()
			require("luasnip").jump(-1)
		end, { silent = true, desc = "Luasnip jump backward" })
		vim.keymap.set({ "i", "s" }, "<C-m>", function()
			if require("luasnip").choice_active() then
				require("luasnip").change_choice(1)
			end
		end, { silent = true })
	end,
}
