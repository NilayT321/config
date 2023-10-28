-- Snippets for beamer blocks and frames

return {
		-- New frame in beamer environments
		s(
				{trig = "!fr", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{frame}{<>}
										<>
								\end{frame}
						]],
						{i(1), i(2)}
				)
		),

		-- Beamer block 
		s(
				{trig = "!bl", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{block}{<>}
										<>
								\end{block}
						]],
						{i(1), i(2)}
				)
		),

		-- Alert block 
		s(
				{trig = "!albl", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{alertblock}{<>}
										<>
								\end{alertblock}
						]],
						{i(1), i(2)}
				)
		),

		-- Examples block
		s(
				{trig = "!bex", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{example}{<>}
										<>
								\end{example}
						]],
						{i(1), i(2)}
				)
		),

		-- Theorem block 
		s(
				{trig = "!bthm", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{theorem}{<>}
										<>
								\end{theorem}
						]],
						{i(1), i(2)}
				)
		),

		-- Definition block 
		s(
				{trig = "!bdefn", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{definition}{<>}
										<>
								\end{definition}
						]],
						{i(1), i(2)}
				)
		),

		-- Proof block 
		s(
				{trig = "!bpf", snippetType = "autosnippet"},
				fmta(
						[[
								\begin{proof}{<>}
										<>
								\end{proof}
						]],
						{i(1), i(2)}
				)
		),


}
