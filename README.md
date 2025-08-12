# config
Neovim config, which has been made to help make writing LaTeX easier. 

## Documentation of LaTeX Shortcuts 

### Basic Math 

- `ff`: Fraction `\frac{<>}{<>}`
- `ssum`: Summation `\sum_{<>}^{<>}`
- `pprod`: Product `\prod_{<>}^{<>}`
- `iint`: Integral `\int_{<>}^{<>}`
- `llim`: Limit `\lim_{<>}`
- `bigU`: Set Union `\bigcup_{<>}^{<>}`
- `bigI`: Set Intersection `\bigcap_{<>}^{<>}`
- `()`: Parentheses `\left( <> \right)`
- `!txt`: Text in Math Mode `\text{<>}`
- `mbf`: Math Bold `\mathbf{<>}`

### Formatting Commands 

- `bft`: Boldfaced Text `\textbf{<>}`
- `itt`: Italic Text `\textit{<>}`
- `ctxt`: Colored Text `\textcolor{<>}{<>}`

### Environments 

- `eqn`: Equation Environment `\begin{equation} <> \end{equation}`
- `neqn`: Starred (Non-Numbered) Equation Environment `\begin{equation*} <> \end{equation*}`
- `algn`: Aligned Math Environment `\begin{align} <> \end{align}`
- `bmatr`: Bracketed Matrix Environment `\begin{bmatrix} <> \end{bmatrix}` 

The command below is used to insert a generic environment i.e. maybe one that you have defined yourself 

- `!env`: General Environment `\begin{*yourenvironment*} <> \end{*yourenvironment*}`

### AMS Environments 

For AMS environments (theorems, definitions, etc.). Note that these environments are based on my personal sty and cls files which can also be found on my GitHub.

- `!thrm`: Theorem `\begin{thrm}[<>] <> \end{thrm}`
- `!lem`: Lemma `\begin{lem}[<>] <> \end{lem}`
- `!examp`: Example `\begin{example}[] <> \end{example}`
- `!prop`: Proposition `\begin{prop}[] <> \end{prop}`
- `!cor`: Corollary `\begin{cor}[] <> \end{cor}`
- `!defn`: Definition `\begin{defn}[<>] <> \end{defn}`
- `!pf`: Proof `\begin{proof} <> \end{proof}`

### Colorful Theorem Environments 

These are shortcuts for colorful theorem environments, generated with the tcolorbox package.

- `!cdefn`: Definition Environment `\begin{cdefn}{<>}{<>} <> \end{cdefn}`
- `!cthrm`: Theorem Environment `\begin{cthrm}{<>}{<>} <> \end{cthrm}`
- `!cprop`: Proposition Environment `\begin{cprop}{<>}{<>} <> \end{cprop}`
- `!cexamp`: Example Environment `\begin{cexamp}{<>}{<>} <> \end{cexamp}`

### Beamer Environments

- `!fr`: New Frame `\begin{frame}{<>} <> \end{frame}`
- `!bl`: Beamer Block `\begin{block}[<>] <> \end{block}`
- `!albl`: Alert Block `\begin{alertblock}[<>] <> \end{alertblock}`
- `!exbl`: Examples Block `\begin{example}[<>] <> \end{example}`
- `!thmbl`: Theorem Block `\begin{theorem}[<>] <> \end{theorem}`
- `!defbl`: Definition Block `\begin{definition}[<>] <> \end{definition}`
- `!prfbl`: Proof Block `\begin{proof}[<>] <> \end{definition}`
- `!al`: Inline Alert Text `\alert{<>}`

### Misc. Environments

These environments are used for my problem set/homework template. 

- `!prob`: (Homework) Problem `\begin{problem}[<>] <> \end{problem}`
- `!soln`: (Homework) Solution `\begin{soln} <> \end{soln}`

The list environments 

- `!unl`: Unordered List/Itemize Environment `\begin{itemize} \item <> \end{itemize}`
- `!enum`: Ordered List/Enumerate Environment `\begin{enumerate} \item <> \end{enumerate}` 
