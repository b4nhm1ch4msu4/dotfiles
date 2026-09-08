-- Add the key mappings only for Markdown files in a zk notebook.
local notebook_root_dir = require("zk.util").notebook_root(vim.fn.expand("%:p"))
if notebook_root_dir ~= nil then
	local tag_dir = vim.fs.joinpath(notebook_root_dir, "1_tags")
	local function map(...)
		vim.api.nvim_buf_set_keymap(0, ...)
	end
	local opts = { noremap = true, silent = false }

	-- Open the link under the caret.
	map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)

	-- Create a new note after asking for its title.
	-- This overrides the global `<leader>zn` mapping to create the note in the same directory as the current buffer.
	-- map("n", "<leader>zn", "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
	-- map(
	-- 	"n",
	-- 	"<leader>zn",
	-- 	'<Cmd>lua require("zk").new({ dir = vim.fs.joinpath(notebook_root_dir, "1_tags"), title = vim.fn.input("Title: ") })<CR>',
	-- 	opts
	-- )
  -- TODO: add selected string as para or add filename at cursor
	vim.keymap.set("n", "<leader>znt", function()
		local title = vim.fn.input("Title: ")
		if title ~= nil and title.find(title, "-t", 1, true) then
			require("zk").new({ dir = tag_dir, title = title, template = "empty.md", edit = false })
      vim.notify("New tags file was created " .. notebook_root_dir .. "/" .. title)
		else
			vim.notify("Title should not a nil and contain `-t` suffix")
		end
	end, vim.tbl_deep_extend("force", opts, { buffer = 0 }))
	-- Create a new note in the same directory as the current buffer, using the current selection for title.
	-- map("v", "<leader>znt", ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>", opts)
	-- Create a new note in the same directory as the current buffer, using the current selection for note content and asking for its title.
	map(
		"v",
		"<leader>znc",
		":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>",
		opts
	)
	map("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)

	-- Open notes linking to the current buffer.
	map("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", opts)
	-- Alternative for backlinks using pure LSP and showing the source context.
	--map('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
	-- Open notes linked by the current buffer.
	map("n", "<leader>zl", "<Cmd>ZkLinks<CR>", opts)

	-- Preview a linked note.
	map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
	-- Open the code actions for a visual selection.
	map("v", "<leader>za", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
end
