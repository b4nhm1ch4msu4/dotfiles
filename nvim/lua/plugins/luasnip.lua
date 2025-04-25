return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    evnt = "InsertEnter",
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        require("luasnip").config.set_config(
            { -- Setting LuaSnip config
                enable_autosnippets = true,
                store_selection_keys = "<Tab>"
            })
        require("luasnip.loaders.from_lua").load({
            paths = "~/.config/nvim/lua/config/LuaSnip/"
        })
    end
}

