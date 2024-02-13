-- Quick snippets for color environments made with tcolorbox 

return {
		-- Color definition block
		s(
				{trig = "!cdefn", snippetType = "autosnippet"}, 
				fmta(
						[[
								\begin{cdefn}{<>}{<>}
										<>
								\end{cdefn}
						]], 
						{i(1), i(2), i(3)}
				)
		),

		-- Color theorem block 
		s(
				{trig = "!cthrm", snippetType = "autosnippet"},
				fmta(
						[[ 
								\begin{cthrm}{<>}{<>}
										<>
								\end{cthrm}
						]],
						{i(1), i(2), i(3)}
				)
		),

		-- Color proposition block 
		s(
				{trig = "!cprop", snippetType = "autosnippet"},
				fmta(
						[[ 
								\begin{cprop}{<>}{<>}
										<>
								\end{cprop}
						]],
						{i(1), i(2), i(3)}
				)
		),

		-- Color example block 
		s(
				{trig = "!cexamp", snippetType = "autosnippet"},
				fmta(
						[[ 
								\begin{cexamp}{<>}{<>}
										<>
								\end{cexamp}
						]],
						{i(1), i(2), i(3)}
				)
		),




}
