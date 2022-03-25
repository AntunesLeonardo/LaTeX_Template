% =========================================================
% Class File
% =========================================================

\LoadClass[a4paper,12pt,oneside,onecolumn,final]{article}

% Package input -------------------------------------------

\usepackage[top=30mm, bottom=20mm, left=30mm, right=20mm]{geometry}
\usepackage[brazil]{babel}
\usepackage[utf8]{inputenc}
\usepackage[style=abnt, sorting=nty, % <-- Autor-data
            %style=abnt-numeric, sorting=none, % <-- Numérico
            giveninits,
            extrayear,
            repeatfields,
            backend=biber,
            uniquename=init]{biblatex}
\usepackage[titletoc,toc,page]{appendix}
\usepackage[table,xcdraw]{xcolor}
\usepackage{fancyhdr, graphicx, svg, float, caption}
\usepackage{tocloft, titlesec, hyperref}
\usepackage{amsmath, amsfonts, amssymb}
\usepackage{lipsum, booktabs, multirow}
\usepackage{times, cuted, xparse}
\usepackage{listings, csquotes}
\usepackage{multicol, wrapfig}

%\usepackage[grid]{eso-pic}

% General Settings ========================================

% Bibliography file input ---------------------------------

\addbibresource{bibliography.bib}

% Formating -----------------------------------------------

\renewcommand{\baselinestretch}{1.0}
\setlength{\parindent}{2em}
\setlength{\parskip}{1em}
\setlength{\columnsep}{1cm}
\titleformat{\section}{\large\bfseries\MakeUppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\large\bfseries}{\thesubsubsection}{1em}{}
\titleformat{name=\section,numberless}{\flushleft\large\bfseries}{}{0em}{}
\captionsetup{font={footnotesize,bf,stretch=1.0}}

% Appendix naming -----------------------------------------

\renewcommand{\appendixtocname}{Apêndices}
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}}

% Header/Footer -------------------------------------------

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\footnotesize{\thepage}}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{14pt}


% Listing colors ==========================================

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{codeblue}{rgb}{0,0,0.6}
\definecolor{codered}{rgb}{0.6,0,0}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\definecolor{greencover}{RGB}{0,176,78}

% Code ----------------------------------------------------

\lstdefinestyle{Code}{
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

% Quick spacing commands ----------------------------------

\newcommand{\simplespacing}{
    \renewcommand\baselinestretch{1}
    \setlength{\parskip}{0pt}
}

\newcommand{\textspacing}{
    \renewcommand\baselinestretch{1.5}
    \setlength{\parskip}{6pt}
}

\newcommand{\directcite}[1]{
    \vspace{1.5cm}
    \hfill
    \begin{minipage}{12cm}
        \simplespacing
        \footnotesize{#1}
    \end{minipage}
    \vspace{1.5cm}
}

\newcommand{\quo}[1]{
    ``#1''
}

% Mathematical commands -----------------------------------

\newcommand{\uncert}[2]{
    \ensuremath #1 \pm #2
}

\DeclareDocumentCommand\deriv{ m m g }{%
    {\ensuremath\frac{d\IfNoValueF{#3}{^#3} #1}{d#2\IfNoValueF{#3}{^#3}}
    }%
}

\DeclareDocumentCommand\derivPartial{ m m g }{%
    {\ensuremath\frac{\partial\IfNoValueF{#3}{^#3} #1}{\partial#2\IfNoValueF{#3}{^#3}}
    }%
}

\newcommand{\sen}{
    \ensuremath\text{sen}
}

\newcommand{\E}[1]{
    \ensuremath\cdot 10^#1
}

% Pretextual elements =====================================

\newcommand{\head}{
    % bibintoc
    \begin{flushright}
        \@author
    \end{flushright}
    \begin{center}
        \printbibliography[heading={none}, title={Referências}]
    \end{center}
}