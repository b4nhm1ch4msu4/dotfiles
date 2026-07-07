vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

----- Options -----
require("tienp.options")
require("tienp")

----- Plugins -----
require("plugins.oil")
require("plugins.snacks")
require("plugins.lsp")
require("plugins.conform")
require("plugins.cmp")
require("plugins.tree-sitter")
require("plugins.colorscheme")
require("plugins.which-key")

----- Remaps -----
require("tienp.remaps")
