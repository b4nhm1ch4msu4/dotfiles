local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("v", {
    t("${"),
    i(1),
    t("}"),
  }),
  s("for", {
    t("FOR    ${"),
    i(1, "item"),
    t("}    IN"),
    t({ "", "    " }),
    i(2, "@{items}"),
    t({ "", "    " }),
    i(3, "Log"),
    t("    ${"),
    ls.insert_node(4, "item"),
    t({ "}", "", "END" }),
  }),
  s("forr", {
    t("FOR    ${"),
    i(1, "i"),
    t("}    IN RANGE    "),
    i(2, "10"),
    t({ "", "    " }),
    i(3, ""),
    -- t("    ${"),
    -- i(4, "i"),
    t({ "", "END" }),
  }),
}
