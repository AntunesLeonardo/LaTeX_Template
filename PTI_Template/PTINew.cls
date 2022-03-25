% =========================================================
% Class File
% =========================================================

\LoadClass[a4paper,12pt,oneside,onecolumn,final]{article}

% Package input =====================================================

\usepackage[top=2cm, bottom=4cm, left=3cm, right=3cm]{geometry}
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

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}
\setlength{\columnsep}{1cm}
\titleformat{\section}{\large\bfseries\MakeUppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\large\bfseries}{\thesubsubsection}{1em}{}
\titleformat{name=\section,numberless}{\flushleft\large\bfseries\MakeUppercase}{}{0em}{}
\captionsetup{font={footnotesize,stretch=1.0}}

% Appendix naming -----------------------------------------

\renewcommand{\appendixtocname}{Apêndices}
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}}

% Header/Footer -------------------------------------------

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.18]{images/LOGO_PTI_0.png}}
\fancyhead[R]{\textbf{\small Fundação Parque Tecnológico Itaipu - FPTI/BR}\\ \@area\vfill}
\fancyfoot[R]{\small \thepage}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{60pt}

\fancypagestyle{nofoot}{ %
    \fancyhf{} % remove everything
    \fancyhead[L]{\includegraphics[scale=0.18]{images/LOGO_PTI_0.png}}
    \fancyhead[R]{\textbf{\small Fundação Parque Tecnológico Itaipu - FPTI/BR}\\ \@area\vfill}
    \renewcommand{\headrulewidth}{0pt}
    \setlength\headheight{60pt}
}

% Listing colors ==========================================

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{codeblue}{rgb}{0,0,0.6}
\definecolor{codered}{rgb}{0.6,0,0}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

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

% Storing values ------------------------------------------

\newcommand{\subtitle}{\newcommand{\@subtitle}}
\newcommand{\city}{\newcommand{\@city}}
\newcommand{\area}{\newcommand{\@area}}

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

% Pretextual elements ===============================================

\newcommand{\cover}{
    %\thispagestyle{empty}
    \begin{center}
        \hfill \break
        \vspace{60pt} \break
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

\addto\captionsbrazil{\renewcommand{\contentsname}{\normalsize{SUMÁRIO}}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\newcommand{\contents}{
    \begin{center}
        \tableofcontents
        \thispagestyle{fancy}
    \end{center}
    \newpage
}

\newcommand{\biblio}{
    \newpage
    \begin{center}
        \printbibliography[heading=bibintoc, title={Referências}]
    \end{center}
}