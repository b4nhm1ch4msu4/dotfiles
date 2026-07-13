return{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
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
	},
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
} 
