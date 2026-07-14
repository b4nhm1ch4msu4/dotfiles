return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			-- You can specify filetypes to autoformat on save here:
			local enabled_filetypes = {
				lua = true,
				-- python = true,
			}
			if enabled_filetypes[vim.bo[bufnr].filetype] then
				return { timeout_ms = 500 }
			else
				return nil
			end
		end,
		default_format_opts = {
			lsp_format = "fallback", -- Use external formatters if configured below, otherwise use LSP formatting. Set to `false` to disable LSP formatting entirely.
		},
		-- You can also specify external formatters in here.
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
					return {
						"format",
						"--start-line",
						ctx.range.start[1],
						"--end-line",
						ctx.range["end"][1],
						"$FILENAME",
					}
				end,
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			robot = { "robocop" },
			-- rust = { 'rustfmt' },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use 'stop_after_first' to run the first available formatter from the list
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
		},
	},
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>cf", function()
			require("conform").format({ async = true })
		end, { desc = "Format file" })
	end,
	-- keys = {
	-- 	{
	-- 		"<leader>cf",
	-- 		function()
	-- 			require("conform").format({ async = true })
	-- 		end,
	-- 		{ desc = "Format file", mode = { "n", "v" } },
	-- 	},
	-- },
}
