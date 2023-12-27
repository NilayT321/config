-- Lua snippets for quickly typing text commands 

return {
		-- Bold text 
		s(
				{trig = "bft", snippetType = "autosnippet"},
				fmta("\\textbf{<>}", {i(1)})
		),

		-- Italic text 
		s(
				{trig = "itt", snippetType = "autosnippet"},
				fmta("\\textit{<>}", {i(1)})
		),

		-- Colored text 
		s(
				{trig = "ctxt", snippetType = "autosnippet"},
				fmta("\\textcolor{<>}{<>}", {i(1), i(2)})
		),

}
