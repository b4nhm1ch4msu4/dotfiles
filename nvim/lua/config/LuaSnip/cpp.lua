local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
		{ trig = "f" },
		fmta(
			[[
  <return_type> <name>(<args>){
    <body>
  }
  ]],
			{
				return_type = i(1, "void"),
				name = i(2, "function_name"),
				args = i(3, ""),
				body = i(0),
			}
		)
	),
}
