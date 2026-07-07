vim.pack.add({ "https://github.com/folke/which-key.nvim", "https://github.com/nvim-tree/nvim-web-devicons" })
require("which-key").setup({
	-- Delay between pressing a key and opening which-key (milliseconds)
	delay = 0,
	icons = { mappings = vim.g.have_nerd_font },
	-- Document existing key chains
	spec = {
		{ "<leader>f", group = "[F]ind files,buffers", mode = { "n", "v" } },
		{ "g", group = "LSP Actions", mode = { "n" } },
		{ "<leader>s", group = "[S]earch, grep", mode = { "n", "v" } },
		{ "<leader>c", group = "[C]ode" },
		{ "<leader>u", group = "[U]I" },
		{ "<leader>t", group = "[T]oggle" },
		{ "<leader>y", group = "[Y]anky" },
	},
})
