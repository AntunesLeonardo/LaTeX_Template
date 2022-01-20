% =========================================================
% Class File
% =========================================================

\LoadClass[a4paper,12pt,oneside,onecolumn,final]{article}

% Package input -------------------------------------------

\usepackage[top=3cm, bottom=2cm, left=3cm, right=2cm]{geometry}
\usepackage[brazil]{babel}
\usepackage[utf8]{inputenc}
\usepackage[style=abnt, giveninits, extrayear, repeatfields, backend=biber, uniquename=init]{biblatex}
\usepackage[titletoc,toc,page]{appendix}
\usepackage{fancyhdr, graphicx, svg, float}
\usepackage{tocloft, titlesec, hyperref}
\usepackage{amsmath, amsfonts, amssymb}
\usepackage{lipsum, booktabs}
\usepackage{listings, xcolor}
\usepackage{times, cuted}
\usepackage{csquotes}


%\usepackage[grid]{eso-pic}

% General Settings ========================================

% Bibliography file input ---------------------------------

\addbibresource{bibliography.bib}

% Formating -----------------------------------------------

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}
\titleformat{\section}{\normalsize\bfseries\MakeUppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries\MakeUppercase}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalsize\bfseries\MakeUppercase}{\thesubsubsection}{1em}{}

% Appendix naming -----------------------------------------

\renewcommand{\appendixtocname}{Apêndices}
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}}

% Header/Footer -------------------------------------------

\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\small{\thepage}}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{14pt}

% Listing colors ==========================================

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{codeblue}{rgb}{0,0,0.6}
\definecolor{codered}{rgb}{0.6,0,0}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

% Latex ---------------------------------------------------

\lstdefinestyle{TeX}{
    backgroundcolor = \color{backcolour},   
    commentstyle = \color{codegreen},
    keywordstyle = \color{codepurple},
    numberstyle = \tiny\color{codegray},
    stringstyle = \color{codepurple},
    identifierstyle = \color{codeblue},
    basicstyle = \ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

% Python --------------------------------------------------

\lstdefinestyle{Python}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}


% Addicional commands =====================================

% Storing values ------------------------------------------

\newcommand{\subtitle}{\newcommand{\@subtitle}}
\newcommand{\institution}{\newcommand{\@institution}}
\newcommand{\graduation}{\newcommand{\@graduation}}
\newcommand{\city}{\newcommand{\@city}}
\newcommand{\note}{\newcommand{\@note}}
\newcommand{\professor}{\newcommand{\@professor}}

% Quick spacing commands ----------------------------------

\newcommand{\simplespacing}{
    \renewcommand\baselinestretch{1}
    \setlength{\parskip}{0pt}
}

\newcommand{\textspacing}{
    \renewcommand\baselinestretch{1.5}
    \setlength{\parskip}{6pt}
}

% Pretextual elements =====================================

% Cover ---------------------------------------------------

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

% Title page ----------------------------------------------

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

% Table of contents ---------------------------------------

\addto\captionsbrazil{\renewcommand{\contentsname}{\normalsize{SUMÁRIO}}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand\cftsecfont{\mdseries}
\renewcommand\cftsecpagefont{\mdseries}
\tocloftpagestyle{fancy}
\setlength{\cftsecindent}{0pt}
\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{0pt}
\setlength{\cftbeforesecskip}{6pt}
\setlength{\cftbeforesubsecskip}{6pt}
\setlength{\cftbeforesubsubsecskip}{6pt}

\newcommand{\contents}{
    \begin{center}
        \tableofcontents
        \thispagestyle{empty}
    \end{center}
    \newpage
}

% References ----------------------------------------------

\newcommand{\biblio}{
    \newpage
    \begin{center}
        \printbibliography[heading=bibintoc, title={Referências}]
    \end{center}
}