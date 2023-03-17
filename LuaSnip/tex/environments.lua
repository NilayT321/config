-- Quick code for environments

return {

		-- Equation environment
		s(
				{trig = "eqn", snippetType = "autosnippet"}, 
				fmta(
						[[
								\begin{equation}
										<>
								\end{equation}
						]], 
						{i(1)}
				)
		),

		-- Starred equation environment
		s(
				{trig = "neqn", snippetType = "autosnippet"}, 
				fmta(
						[[
								\begin{equation*}
										<>
								\end{equation*}
						]], 
						{i(1)}
				)
		),

		-- Align environment
		s(
				{trig = "algn", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{align*}
										<>
								\end{align*}
						]], 
						{i(1)}
				)
		),
		
		-- Bmatrix environment
		s(
				{trig = "bmatr", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{bmatrix}
										<>
								\end{bmatrix}
						]], 
						{i(1)}
				)
		),

		-- General environment
		s(
				{trig = "!env", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{<>}
										<>
								\end{<>}
						]],
						{i(1), i(2), rep(1)}
				)
		),
		
		-- Theorem environment
		s(
				{trig = "!thrm", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{thrm}{<>}{}
										<>
								\end{thrm}
						]],
						{i(1), i(2)}
				)
		),

		-- Example environment
		s(
				{trig = "!examp", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{example}{}{}
										<>
								\end{example}
						]],
						{i(1)}
				)
		),

		-- Proposition 
		s(
				{trig = "!prop", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{prop}{}{}
										<>
								\end{prop}
						]],
						{i(1)}
				)
		),

			
}
