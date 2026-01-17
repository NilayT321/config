-- Lua Snippets for quickly inserting stuff related to math 

return {

		-- Fractions
		s(
				{trig = "ff", snippetType = "autosnippet"}, 
				fmta("\\frac{<>}{<>}", {i(1), i(2)})
		),

		-- Sums
		s(
				{trig = "ssum", snippetType = "autosnippet"}, 
				fmta("\\sum_{<>}^{<>}", {i(1), i(2)})
		),

		-- Product 
		s(
				{trig = "pprod", snippetType = "autosnippet"},
				fmta("\\prod_{<>}^{<>}", {i(1), i(2)})
		),

		-- Integrals 
		s(
				{trig = "!int", snippetType = "autosnippet"}, 
				fmta("\\int_{<>}^{<>}", {i(1), i(2)})
		),

		-- Limit
		s(
				{trig = "llim", snippetType = "autosnippet"},
				fmta("\\lim_{<>}", {i(1)})
		),

		-- Union of sets
		s(
				{trig = "bigU", snippetType = "autosnippet"},
				fmta("\\bigcup_{<>}^{<>}", {i(1), i(2)})
		),

		-- Intersection of sets 
		s(
				{trig = "bigI", snippetType = "autosnippet"},
				fmta("\\bigcap_{<>}^{<>}", {i(1), i(2)})
		),

		-- Left and right parentheses
		s(
				{trig = "()", snippetType = "autosnippet"},
				fmta("\\left( <> \\right)", {i(1)})
		),

		-- -- Left and right square brackets
		-- s(
		-- 		{trig = "[]", snippetType = "autosnippet"},
		-- 		fmta("\\left[ <> \\right]", {i(1)})
		-- ),

		-- Text in math mode
		s(
				{trig = "!txt", snippetType = "autosnippet"},
				fmta("\\text{<>}", {i(1)})
		),

		-- Mathbf 
		s(
				{trig = "!mbf", snippetType = "autosnippet"},
				fmta("\\mathbf{<>}", {i(1)})
		),

		-- RightArrow
		s(
				{trig = "!->", snippetType = "autosnippet"},
				fmta("\\xrightarrow{<>}", {i(1)})
		),

		s(
				{trig = "!<-", snippetType = "autosnippet"},
				fmta("\\xleftarrow{<>}", {i(1)})
		),
}
