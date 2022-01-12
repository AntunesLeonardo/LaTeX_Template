\LoadClass[a4paper,12pt,oneside,onecolumn,final]{article}

% Package input =====================================================

\usepackage[top=3cm, bottom=2cm, left=3cm, right=2cm]{geometry}
\usepackage[brazil]{babel}
\usepackage[utf8]{inputenc}
\usepackage[style=abnt, giveninits, extrayear, repeatfields, backend=biber, uniquename=init]{biblatex}
\usepackage[titletoc,toc,page]{appendix}
\usepackage{fancyhdr, graphicx, svg, float}
\usepackage{amsmath, amsfonts, amssymb}
\usepackage{lipsum, booktabs}
\usepackage{times, cuted}
\usepackage{tocloft}
\usepackage{csquotes}

%\usepackage[grid]{eso-pic}

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}

\renewcommand{\appendixtocname}{Ap\^endice}
\renewcommand{\appendixpagename}{Ap\^endice}

\pagestyle{fancy}
\fancyhf{}
\rhead{\small{\thepage}}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{14pt}

\addbibresource{bibliography.bib}

% New comands =======================================================

\newcommand{\subtitle}{\newcommand{\@subtitle}}
\newcommand{\institution}{\newcommand{\@institution}}
\newcommand{\graduation}{\newcommand{\@graduation}}
\newcommand{\city}{\newcommand{\@city}}
\newcommand{\note}{\newcommand{\@note}}
\newcommand{\professor}{\newcommand{\@professor}}

\newcommand{\simplespacing}{
    \renewcommand\baselinestretch{1}
    \setlength{\parskip}{0pt}
}

\newcommand{\textspacing}{
    \renewcommand\baselinestretch{1.5}
    \setlength{\parskip}{6pt}
}




% Pretextual elements ===============================================

\newcommand{\cover}{
    \thispagestyle{empty}
    \begin{center}
        \MakeUppercase{\@institution}\\
        \MakeUppercase{\@graduation}\\
        \vspace{36pt}
        \MakeUppercase{\@author}\\
        \vspace{144pt}
        \MakeUppercase{\textbf{\@title}}\\
        {\@subtitle}\\
        \vfill
        \MakeUppercase{\@city}\\
        \MakeUppercase{\@date}
    \end{center}
    \newpage
    \setcounter{page}{1}
}

\newcommand{\titlePage}{
    \thispagestyle{empty}
    \begin{center}
        \MakeUppercase{\@author}\\
        \vspace{144pt}
        \MakeUppercase{\textbf{\@title}}\\
        {\@subtitle}\\
        \vspace{72pt}
        \hspace{9.9cm}
        \begin{minipage}{6cm}
            {\@note}\break
            \\ \hfill
            {\@professor}
        \end{minipage}\\ \hfil
        \vfill
        \MakeUppercase{\@city}\\
        \MakeUppercase{\@date}
    \end{center}
    \newpage
}

\addto\captionsbrazil{\renewcommand{\contentsname}{\normalsize{SUMÁRIO}}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\newcommand{\contents}{
    \begin{center}
        \tableofcontents
        \thispagestyle{empty}
    \end{center}
    \newpage
}

\newcommand{\biblio}{
    \newpage
    \begin{center}
        \printbibliography[title={\normalsize{REFERÊNCIAS}}]
    \end{center}
}