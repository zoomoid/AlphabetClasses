% dtext.cls
%
% dtext is mostly atext but aims towards more fictional text usage
% instead of scientific papers.
%
% This class provides layout for fictional text and
% furthermore flow text fitted to my stylistic needs

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dtext}[2016/12/07 D Text Package]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions \relax

\LoadClass[a4paper]{memoir}

% Load up necessary packages
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
\usepackage[explicit]{titlesec}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage[linktocpage=true]{hyperref}
\usepackage{tocloft}
\usepackage{float}
\usepackage{lmodern}
\usepackage{listings}
\usepackage{csquotes}
\usepackage{titling}
\usepackage{textcomp}
\usepackage{gensymb}
\usepackage{fancyhdr}

\newcommand{\atext}{{\ttfamily ATEXT} }
\newcommand{\bmath}{{\ttfamily BMATH} }
\newcommand{\amath}{{\ttfamily AMATH} }


% PAGE STYLING
\setlrmarginsandblock{2.5cm}{2.5cm}{*}
\setulmarginsandblock{2.5cm}{2.5cm}{*}
\checkandfixthelayout

% Tiefe des Inhaltsverzeichnisses
\maxtocdepth{subsection}

% Serifenloser Titel des Inhaltsverzeichnisses
\addto\captionsngerman{\renewcommand{\contentsname}{\sffamily Inhaltsverzeichnis}}
\addto\captionsngerman{\renewcommand{\listfigurename}{\sffamily\LARGE\bfseries Abbildungsverzeichnis}}
\pagestyle{plain}

\chapterstyle{default}

%% Sektionen
\maxsecnumdepth{subsection}

\titleformat{\chapter}{\normalfont\sffamily\LARGE\bfseries}{#1\ \thechapter}{0.5em}{}
\titleformat{\section}{\normalfont\sffamily\Large\bfseries}{#1\ \thesection}{0.5em}{}
\titleformat{\subsection}{\normalfont\sffamily\large\bfseries}{#1\ \thesubsection}{0.5em}{}

% Header
% \newcommand{\@gruppe}{}
% \newcommand{\gruppe}[1][]{\renewcommand{\@gruppe}{#1}}
% \pagestyle{fancy}
% \fancyhf{}
% \rhead{}
% \lhead{Gruppe \@gruppe}


% Fancy superscript for BibTex cites
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}

%\renewcommand{\thesection{\arabic{section}}}

% Numbering bound to sections rather than chapters
\counterwithin{figure}{section}

\counterwithout{section}{chapter}
\counterwithin{chapter}{part}

% paragraph indention
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}

\renewcommand{\arraystretch}{1.2}

% \let\oldsection\section
% \renewcommand\section{\clearpage\oldsection}

\preauthor{\begin{center}%
           \normalsize \lineskip 0.5em%
           \begin{tabular}[t]{c}}
\postauthor{\end{tabular}\end{center}\pagebreak}

\renewcommand*\and{%
  \end{tabular}%
  \hskip 1em \relax
  \begin{tabular}[t]{c}}
\renewcommand*{\andnext}{%
  \end{tabular}\\ \begin{tabular}[t]{c}}

\pretitle{\begin{center}\Huge\sffamily\bfseries}
\posttitle{\par\end{center}\vfill}

\endinput
