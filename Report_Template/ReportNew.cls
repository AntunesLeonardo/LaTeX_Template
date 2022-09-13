% =========================================================
% Class File
% =========================================================

\LoadClass[12pt]{report}

% Package input -------------------------------------------

\usepackage{luainputenc}
\usepackage{fontspec}
\usepackage[brazil
            ]{babel}
\usepackage[a4paper,
            portrait,
            onecolumn,
            %includeheadfoot,
            twoside=false,
            top=30mm,
            bottom=20mm,
            left=25mm,
            right=25mm
            ]{geometry}
\usepackage[style=abnt, sorting=nty,% <-- Autor-data
            %style=abnt-numeric, sorting=none,% <-- Numérico
            giveninits,
            extrayear,
            repeatfields,
            backend=biber,
            uniquename=init,
            bibwarn=true
            ]{biblatex}
\usepackage[toc,
            title,
            titletoc,
            page
            ]{appendix}
\usepackage[format=plain,
            indention=0mm,
            justification=centerlast,
            labelformat=simple,
            labelsep=colon,
            textformat=simple,
            font=footnotesize,
            font+=up,
            font+={stretch=1.0}
            ]{caption}
\usepackage[format=plain,
            indention=0mm,
            justification=centerlast,
            labelformat=parens,
            labelsep=space,
            font=footnotesize,
            font+=up,
            font+={stretch=1.0}
            ]{subcaption}
\usepackage[%rgb,% <-- Digital (RGB)
            cmyk,% <-- Printing (CMYK)
            %gray,% <-- Gray scale
            table,
            xcdraw
            ]{xcolor}
\usepackage[%americanvoltages,% <-- +- voltage
            europeanvoltages,% <-- Arrow voltage
            americancurrents,
            americanresistors,% <-- Zig-zag resistors
            %europeanresistors,% <-- Rectangular resistors
            americaninductors
            ]{circuitikz}
\usepackage[hidelinks,
            linktoc=all,
            breaklinks=true,
            colorlinks=false
            ]{hyperref}
\usepackage[centertags,
            sumlimits,
            nointlimits,
            namelimits,
            reqno
            ]{amsmath}
\usepackage[style=brazilian,
            threshold=3,
            thresholdtype=lines
            ]{csquotes}
\usepackage[output-decimal-marker = \text{,},
            exponent-product = \cdot,
            uncertainty-mode = separate,
            per-mode = symbol,
            sticky-per,
            group-digits = integer,
            group-minimum-digits = 5,
            group-separator = {\,},
            list-separator = {; },
            list-final-separator = {; e },% Language sensitive
            list-pair-separator = { e },% Language sensitive
            product-mode = symbol,
            product-symbol = \ensuremath{\cdot},
            product-units = repeat,
            range-phrase = { a },% language sensitive
            range-units = single,
            %output-complex-root = \ensuremath{\imath},% <-- Complex as 'i'
            output-complex-root = \ensuremath{\jmath},% <-- Complex as 'j'
            complex-root-position = before-number,
            angle-mode = decimal,
            quantity-product = {\ }
            ]{siunitx}
\usepackage{graphicx, svg, tikz}
%\usepackage{pgfplots}
%\usepackage{background}
\usepackage{tocloft, titlesec}
\usepackage{amsfonts, amssymb}
\usepackage{tabularx, multirow}
\usepackage{listings}
\usepackage{multicol}
\usepackage{fancyhdr}
\usepackage{float}
\usepackage{lipsum}
\usepackage{xparse}

%\usepackage[grid]{eso-pic}

% General Settings ========================================

% Bibliography file input ---------------------------------

\addbibresource{bibliography.bib}

% Fonts ---------------------------------------------------

\defaultfontfeatures{Ligatures=TeX}
\setmainfont{Times New Roman}
\setmonofont{Courier New}

% Cover Background ----------------------------------------



% Spacing -------------------------------------------------

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}
\setlength{\columnsep}{1cm}

% Section style (titlesec) --------------------------------

\titleformat{\section}{\large\bfseries\MakeUppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\large\bfseries\MakeUppercase}{\thesubsection}{1em}{}
\titleformat{name=\section,numberless}{\centering\large\bfseries\MakeUppercase}{}{0em}{}

\titleformat{\chapter}[frame]
{\normalfont}
{\filright\normalsize\enspace \MakeUppercase{\chaptername} \thechapter\enspace}
{8pt}{\LARGE\bfseries\filcenter}

% Quotation (csquotes) ------------------------------------

\newenvironment*{directquote}
    {\vspace{1.5cm}
    \hfill
    \begin{minipage}{14cm}
        \quote
        \simplespacing
        \footnotesize
    }
    {
        \endquote
    \end{minipage}
    \vspace{1.5cm}}

\SetBlockEnvironment{directquote}

\SetCiteCommand{\autocite}
\renewcommand{\mkcitation}[1]{ #1}

% Tabularx ------------------------------------------------

\renewcommand{\arraystretch}{1.2}
\renewcommand{\tabularxcolumn}[1]{>{\small}m{#1}}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}

% Header/Footer -------------------------------------------

\fancypagestyle{report-plain}{
    \fancyhf{}
    \fancyhead[L]{\footnotesize{\@subject}}
    \fancyhead[R]{\footnotesize{\chaptername\ \thechapter}}
    \renewcommand{\headrulewidth}{1pt}
    \setlength\headheight{14pt}

    \fancyfoot[C]{\footnotesize{\thepage}}
}
\fancypagestyle{report-footonly}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\footnotesize{\thepage}}
}

\pagestyle{report-plain}
\assignpagestyle{\chapter}{report-footonly}

% Appendix ------------------------------------------------

\providecommand{\appendixname}{Appendix}
\renewcommand{\appendixtocname}{Apêndices}% Language sensitive
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}} % Language sensitive

% Define colors -------------------------------------------

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{codeblue}{rgb}{0,0,0.6}
\definecolor{codered}{rgb}{0.6,0,0}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\definecolor{gray}{HTML}{363636}

% Listing -------------------------------------------------

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

\lstset{frame=l,
        firstnumber=auto,
        captionpos=b
}

\renewcommand{\lstlistingname}{Programa}% Language sensitive
\renewcommand{\lstlistlistingname}{Programas}% Language sensitive

% Addicional commands =====================================

% Storing values ------------------------------------------

\newcommand{\institution}{\newcommand{\@institution}}
\newcommand{\graduation}{\newcommand{\@graduation}}
\newcommand{\professor}{\newcommand{\@professor}}
\newcommand{\subject}{\newcommand{\@subject}}

% Quick spacing commands ----------------------------------

\newcommand{\simplespacing}{
    \renewcommand\baselinestretch{1}
    \setlength{\parskip}{0pt}
}

\newcommand{\textspacing}{
    \renewcommand\baselinestretch{1.5}
    \setlength{\parskip}{6pt}
}

% Mathematical commands -----------------------------------

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

% Pretextual elements =====================================

% Cover ---------------------------------------------------

\newcommand{\cover}{
    \thispagestyle{empty}
    \begin{center}
        \Large{\@author}
    \end{center}
    \vspace{15mm}
    \begin{flushleft}

        \hspace{0.1\textwidth}
        \noindent\parbox{0.6\textwidth}{%
            \raggedleft\MakeUppercase{\bfseries{\fontsize{35pt}{35pt}\selectfont \@title\\}}
        }\\%
        \vspace{7mm}\hspace{0.59\textwidth}
        \noindent\parbox{0.4\textwidth}{%
            \raggedright\textcolor{gray}{\MakeUppercase{\bfseries{\fontsize{20pt}{20pt}\selectfont \@professor\\}}}
        }%
    \end{flushleft}
    \vfill
    \begin{center}
        \Large{\@institution\\\@graduation\ --\ \@date}
    \end{center}
    \newpage
    \setcounter{page}{1}
}

% Table of contents ---------------------------------------

\renewcommand{\cfttoctitlefont}{\normalfont\large\bfseries\MakeUppercase}
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