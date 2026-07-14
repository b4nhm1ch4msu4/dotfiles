return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"mason-org/mason.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		local servers = {
			clangd = {},
			-- pyright = {},
			stylua = {}, -- Used to format Lua code
			lua_ls = {
				on_init = function(client)
					client.server_capabilities.documentFormattingProvider = false -- Disable formatting (formatting is done by stylua)

					if client.workspace_folders then
						local path = client.workspace_folders[1].name
						if
							path ~= vim.fn.stdpath("config")
							and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
						then
							return
						end
					end

					client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
						runtime = {
							version = "LuaJIT",
							path = { "lua/?.lua", "lua/?/init.lua" },
						},
						workspace = {
							checkThirdParty = false,
							-- NOTE: this is a lot slower and will cause issues when working on your own configuration.
							--  See https://github.com/neovim/nvim-lspconfig/issues/3189
							library = vim.tbl_extend("force", vim.api.nvim_get_runtime_file("", true), {
								"${3rd}/luv/library",
								"${3rd}/busted/library",
							}),
						},
					})
				end,
				---@type lspconfig.settings.lua_ls
				settings = {
					Lua = {
						format = { enable = false }, -- Disable formatting (formatting is done by stylua)
					},
				},
			},
			robotframework_ls = {
				settings = {
					robot = {
						pythonpath = {
							"C:\\workspace\\bmw_icon_resource\\resource",
							-- "C:\\workspace\\bmw_icon_script\\Plugin",
							"C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\dlt",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\SP25Bench",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\PCAP",
							"C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\oecon",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\canat",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\PCAN",
							-- "C:\\workspace\\bmw_icon_script\\Plugin\\EnvPlugin\\Util",
						},
					},
				},
			},
		}

		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			-- You can add other tools here that you want Mason to install
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		for name, server in pairs(servers) do
			vim.lsp.config(name, server)
			vim.lsp.enable(name)
		end
	end,
}
