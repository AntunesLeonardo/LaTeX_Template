\LoadClass[a4paper,12pt,oneside,onecolumn,final]{article}

% Package input =====================================================

\usepackage[top=2cm, bottom=3cm, left=3cm, right=3cm]{geometry}
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
\usepackage{titlesec}

%\usepackage[grid]{eso-pic}

\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{4em}
\setlength{\parskip}{1em}
\titleformat{\section}{\normalsize\bfseries\MakeUppercase}{\thesection}{1em}{}

\renewcommand{\appendixtocname}{Apêndices}
\renewcommand{\appendixpagename}{\centering\normalsize{\MakeUppercase{Apêndices}}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.18]{images/LOGO_PTI_0.png}}
\fancyhead[R]{\textbf{\small Fundação Parque Tecnológico Itaipu - FPTI/BR}\\ \@area\vfill}
\renewcommand{\headrulewidth}{0pt}
\setlength\headheight{60pt}

\addbibresource{bibliography.bib}

% New comands =======================================================

\newcommand{\subtitle}{\newcommand{\@subtitle}}
\newcommand{\city}{\newcommand{\@city}}
\newcommand{\area}{\newcommand{\@area}}


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