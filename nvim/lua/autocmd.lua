local harpoon = require("harpoon")
local harpoon_group = vim.api.nvim_create_augroup("HarpoonAutoCmds",
                                                  {clear = true})

vim.api.nvim_create_autocmd("filetype", {
    desc = "Add non-empty files to Harpoon on open",
    group = harpoon_group,
    pattern = "*",
    callback = function(args)
        local bufname = vim.api.nvim_buf_get_name(args.buf)
        local filetype = vim.bo[args.buf].filetype
        if bufname == "" or vim.fn.isdirectory(bufname) == 1 or vim.tbl_contains({ "help", "oil", "harpoon", "toggleterm" }, filetype) then return end
        harpoon:list():add()
    end
})

vim.api.nvim_create_autocmd("ExitPre", {
    desc = "Clear Harpoon on exit",
    group = harpoon_group,
    callback = function() harpoon:list():clear() end
})
