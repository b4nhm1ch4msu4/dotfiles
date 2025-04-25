local harpoon = require("harpoon")
local harpoon_group = vim.api.nvim_create_augroup("HarpoonAutoCmds",
                                                  {clear = true})

vim.api.nvim_create_autocmd("BufReadPost", {
    desc = "Add non-empty files to Harpoon on open",
    group = harpoon_group,
    callback = function(args)
        local bufname = vim.api.nvim_buf_get_name(args.buf)
        local filetype = vim.bo[args.buf].filetype
        -- Skip if: unnamed, directory, or special buffer (e.g., NvimTree)
        if bufname == "" or vim.fn.isdirectory(bufname) == 1 or filetype ==
            "" then return end

        -- Skip empty files
        local lines = vim.api.nvim_buf_get_lines(args.buf, 0, -1, false)
        if #lines == 1 and lines[1] == "" then return end

        harpoon:list():add()
    end
})

vim.api.nvim_create_autocmd("ExitPre", {
    desc = "Clear Harpoon on exit",
    group = harpoon_group,
    callback = function() harpoon:list():clear() end
})

-- Map <Esc> to quit for oil and help
-- vim.api.nvim_create_autocmd("FileType", {
--   desc = "Disable Esc for oil and help",
--   pattern ={"oil","help"} ,
--   callback = function()
--     vim.keymap.set("n", "<Esc>", "<cmd>:q<CR>", { buffer = true, nowait = true })
--   end,
-- })
