\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2018/09/22 A basic class for assignments]

\LoadClass[11pt, a4paper, titlepage]{article}


% % % % % % % % % % % % % % % % %
%			PACKAGES			%
% % % % % % % % % % % % % % % % %
\RequirePackage[T1]{fontenc}								% ENCODING
\RequirePackage[utf8]{inputenc}							% ENCODING
\RequirePackage[english]{babel}							% LANGAGE
\RequirePackage[margin=2cm, headheight=13.6cm]{geometry}		% DOCUMENT FORMATTING
\RequirePackage{fancyhdr}								% HEADER
\RequirePackage{moresize}								% HUGE FONT
\RequirePackage{xcolor}                   							% COLOR
\RequirePackage{hyperref}               							% REFERENCE
\RequirePackage{tcolorbox}								% COLOR BOX
\RequirePackage{listings}									% PROGRAMMING CODE
\RequirePackage{graphicx}								% IMAGE
\RequirePackage{caption}									% CAPTION
\RequirePackage{titling}									% TYPESETTING FOR MAKETITLE


% PACKAGES CONFIGURATION
\pagestyle{fancy}
\rhead{\coursecode}
\lhead{\textsc{\coursename}}

\hypersetup{
    colorlinks = false,
    linkbordercolor = {white}
}


% % % % % % % % % % % % % % % % %
%			OPTIONS				%
% % % % % % % % % % % % % % % % %


% % % % % % % % % % % % % % % % %
%			VARIABLES			%
% % % % % % % % % % % % % % % % %
\newcommand{\coursecode}{}
\newcommand{\coursename}{}
\newcommand{\department}{}
\newcommand{\doctype}{}

\newcounter{question}


% % % % % % % % % % % % % % % % %
%		     COMMANDS			%
% % % % % % % % % % % % % % % % %
\newcommand{\rulebreak}{%
	\par%
	\vspace{0.9cm}%
    \noindent\rule{4cm}{0.4pt}%
    \vspace{1.2cm}%
    \par%
}


\newcommand{\coverpage}{%
	\pagenumbering{roman}%
	\thispagestyle{empty}%
    \newgeometry{left=5cm, bottom=2cm, right=5cm, top=2cm}%
	\begin{center}\hspace{0pt}\vfill%
    {\MakeUppercase \department}
	\rulebreak%

	{\HUGE\textbf{\textit{\doctype}}}

    \vspace{0.5cm}
    {\Large\textbf{\coursecode\,-\,\coursename}}

    \vspace{0.5cm}
	\Large{\thetitle}%
	\par%
	\vspace{0.9cm}%
    \noindent\rule{4cm}{0.4pt}%
    \vspace{0.45cm}
    \tableofcontents%
	\rulebreak%
	\theauthor\\
	~\\
	\thedate\par
    \hspace{0pt}
	\end{center}%
    \vfill
    \hspace{0pt}
	\pagebreak%
    \restoregeometry%
    \pagenumbering{arabic}%
}


\newcommand{\question}[1]
{
	\refstepcounter{question}
	\addvspace{\bigskipamount}
	\ifx&#1&
		\noindent\textbf{Question \thequestion} \hfill\bigskip
	\else
		\noindent\textbf{Question \thequestion} - #1 \hfill\bigskip
	\fi
}


% % % % % % % % % % % % % % % % %
%		ENVIRONMENTS			%
% % % % % % % % % % % % % % % % %
\newenvironment{consoleOutput}
{
    \bigskip
    \begin{tcolorbox}
    \ttfamily
}
{%
    \end{tcolorbox}
    \bigskip
}
