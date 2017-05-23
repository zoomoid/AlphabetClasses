% ctext.cls
%
% This class is based off of the article class and performs some stylistic
% changes to the general document proportions and minor changes to both
% predefined commands like \tableofcontent and the actual text itself
%
% This class DOES NOT include my other package, with has to be done seperately
% to enable math support
%
% This class provides layout for scientific papers and articles and
% furthermore flow text fitted to my stylistic needs

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ctext}[2016/12/07 C Text Package]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions \relax

\LoadClass[a4paper]{memoir}

% Load up necessary packages
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
\usepackage{titlesec}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage[linktocpage=true]{hyperref}
\usepackage{tocloft}
\usepackage{float}

\usepackage{lmodern}
\usepackage{csquotes}
\usepackage{fancyhdr}

\newcommand{\atext}{{\ttfamily ATEXT} }
\newcommand{\bmath}{{\ttfamily BMATH} }
\newcommand{\amath}{{\ttfamily AMATH} }

\setlrmarginsandblock{1in}{1in}{*}
\setulmarginsandblock{1in}{1in}{*}
\checkandfixthelayout

% Tiefe des Inhaltsverzeichnisses
% \maxtocdepth{subsection}

% Serifenloser Titel des Inhaltsverzeichnisses
\addto\captionsngerman{\renewcommand{\contentsname}{\sffamily Inhaltsverzeichnis}}
\addto\captionsngerman{\renewcommand{\listfigurename}{\sffamily\LARGE\bfseries Abbildungsverzeichnis}}
\pagestyle{plain}

% \chapterstyle{default}
%
% %% Sektionen
% \maxsecnumdepth{subsection}

\titleformat{\chapter}{\sffamily\LARGE\bfseries}{\ \thechapter}{0.5em}{}
\titleformat{\section}{\sffamily\Large\bfseries}{\ \thesection}{0.5em}{}
\titleformat{\subsection}{\sffamily\large\bfseries}{\ \thesubsection}{0.5em}{}

% Header
\newcommand\@group{}
\newcommand{\group}[1]{\renewcommand\@group{Gruppe #1}}
\pagestyle{fancy}
\fancyhf{}
\lhead{\bfseries\sffamily\small \@group}


% Fancy superscript for BibTex cites
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}

%\renewcommand{\thesection{\arabic{section}}}

% Numbering bound to sections rather than chapters
% \counterwithin{figure}{section}
%
% \counterwithout{section}{chapter}
% \counterwithin{chapter}{part}

% paragraph indention
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}

\renewcommand{\arraystretch}{1.2}



% \let\oldsection\section
% \renewcommand\section{\clearpage\oldsection}
\makeatletter
\renewcommand{\and}{\end{tabular}\\ \begin{tabular}[t]{@{}l}}
\renewcommand\maketitle{
\thispagestyle{fancy}
\null
\vskip 30\p@
\begin{flushleft}%
  {\LARGE\sffamily\bfseries \@title \par}%
  \vskip 1.5em%
  {\small
   \lineskip .75em%
    \begin{tabular}[t]{@{}l}%
      \@author
    \end{tabular}\par}%
    \vskip 1.5em%
  {\small \@date \par}%
\end{flushleft}\par
\@thanks
\vspace{2em}
\pagestyle{plain}
\renewcommand{\headrulewidth}{0pt} %obere Trennlinie
\setcounter{footnote}{0}
}
\makeatother

\endinput
