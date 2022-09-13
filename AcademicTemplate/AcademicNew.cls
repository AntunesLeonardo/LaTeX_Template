% =========================================================
% Class File
% =========================================================

\LoadClass[12pt]{article}

% Package input -------------------------------------------

\usepackage{polyglossia}
\usepackage{luainputenc}
\usepackage{fontspec}
\usepackage[a4paper,
            portrait,
            onecolumn,
            includeheadfoot,
            twoside=false,
            top=30mm,
            bottom=20mm,
            left=30mm,
            right=20mm
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

% Languages -----------------------------------------------

\setmainlanguage[variant=brazilian]{portuguese}
%\setotherlanguage[variant=american]{english}
\setotherlanguage{latin}

% Spacing -------------------------------------------------

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}
\setlength{\columnsep}{1cm}

% Section style (titlesec) --------------------------------

\titleformat{\section}{\normalsize\bfseries\MakeUppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries\MakeUppercase}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalsize\bfseries\MakeUppercase}{\thesubsubsection}{1em}{}
\titleformat{name=\section,numberless}{\centering\normalsize\bfseries\MakeUppercase}{}{0em}{}

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

\fancypagestyle{academic-plain}{
    \fancyhf{}
    \fancyhead[R]{\footnotesize{\thepage}}
    \renewcommand{\headrulewidth}{0pt}
    \setlength\headheight{14pt}
}
\pagestyle{academic-plain}

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

\newcommand{\E}[1]{
    \ensuremath\cdot 10^#1
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

\renewcommand{\cfttoctitlefont}{\normalfont\normalsize\bfseries\MakeUppercase}
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
        \printbibliography[heading=bibintoc]
    \end{center}
}