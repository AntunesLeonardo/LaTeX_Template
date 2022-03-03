% =========================================================
% Class File
% =========================================================

\LoadClass[a4paper,12pt,twoside,onecolumn,final]{article}

% Package input -------------------------------------------

\usepackage[top=2.5cm, bottom=3.7cm, left=2.5cm, right=2.5cm]{geometry}
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
\titleformat{name=\section,numberless}{\flushleft\large\bfseries\MakeUppercase}{}{1em}{}
\captionsetup{font={footnotesize,bf,stretch=1.0}}

% Appendix naming -----------------------------------------

\renewcommand{\appendixtocname}{Apêndices}
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}}

% Header/Footer -------------------------------------------

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\footnotesize{\MakeUppercase{\@edition\ \@theyear\ \@title}}}
\fancyhead[RO]{\footnotesize{\MakeUppercase{\@authorabbreviate}}}
\fancyfoot[L]{\footnotesize{{\flushright{\MakeUppercase{Sysdin \@theyear}}}\\Proceedings of the\ \@edition\ \@theyear\ World Congress on System Dynamics, \@professor\ (Editor), \MakeUppercase{\@institution}, \@city, \@date, \@theyear}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\setlength\headheight{12.6pt}

\fancypagestyle{coverstyle}{ %
    \fancyhf{} % remove everything
    %\fancyhead[R]{\MakeUppercase{\Huge{\@edition\ \@theyear}\\ \normalsize{\@city}}}
    \fancyfoot[L]{\footnotesize{Proceedings of the\ \@edition\ \@theyear\ World Congress on System Dynamics, \@professor\ (Editor), \MakeUppercase{\@institution}, \@city, \@date, \@theyear}}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0.5pt}
}

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

% Storing values ------------------------------------------

\newcommand{\authorabbreviate}{\newcommand{\@authorabbreviate}}
\newcommand{\authoremail}{\newcommand{\@authoremail}}
\newcommand{\edition}{\newcommand{\@edition}}
\newcommand{\location}{\newcommand{\@location}}
\newcommand{\institution}{\newcommand{\@institution}}
\newcommand{\graduation}{\newcommand{\@graduation}}
\newcommand{\professor}{\newcommand{\@professor}}
\newcommand{\city}{\newcommand{\@city}}
\newcommand{\address}{\newcommand{\@address}}
\newcommand{\theyear}{\newcommand{\@theyear}}

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

% Cover ---------------------------------------------------

\newcommand{\abstractAndKeyWords}[2]{
    \thispagestyle{coverstyle}
    \begin{figure}[htb]
        \centering
        \begin{minipage}{7.5cm}
            \centering
            \includegraphics[width=130pt]{images/cachoeira_ASD.jpg}
        \end{minipage}
        \hfill
        \begin{minipage}{7.5cm}
            \linespread{1.5}\selectfont
            
            \textcolor{greencover}{\MakeUppercase{\Huge{\@edition\ \@theyear}\\ \normalsize{\@location}}}

        \end{minipage}
    \end{figure}
    \begin{center}
        \MakeUppercase{\large{\bfseries \@title}}
    \end{center}
    \begin{flushleft}
        \textbf{\@author}\\
        \@authoremail\\
        \@graduation\ --\ \MakeUppercase{\@institution}\\
        \@address
    \end{flushleft}
    \vspace{0.1cm}
    {\itshape\textbf{Resumo:} #1}\\
    {\itshape\textbf{Palavras-chave:} #2}\\
}

% References ----------------------------------------------

\newcommand{\biblio}{
    % bibintoc
    \begin{center}
        \printbibliography[heading={bibintoc}, title={Referências}]
    \end{center}
}