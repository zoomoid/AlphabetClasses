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

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax

\LoadClass{article}

% Load up necessary packages
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
\usepackage{geometry}
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

\geometry{a4paper,margin=1in}

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

\titleformat{\chapter}{\normalfont\sffamily\LARGE\bfseries}{#1\ \thechapter}{0.5em}{}
\titleformat{\section}{\normalfont\sffamily\Large\bfseries}{#1\ \thesection}{0.5em}{}
\titleformat{\subsection}{\normalfont\sffamily\large\bfseries}{#1\ \thesubsection}{0.5em}{}

% Header
\newcommand{\@group}{}
\newcommand{\group}[1]{\renewcommand{\@group}{Gruppe #1}}
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
\renewcommand\maketitle{%\begin{titlepage}%
\thispagestyle{fancy}
\let\footnotesize\small
\let\footnoterule\relax
\let \footnote \thanks
\null
\vskip 30\p@
\begin{flushleft}%
  {\LARGE\sffamily\bfseries \@title \par}%
  \vskip 1.5em%
  {\small
   \lineskip .5em%
    \begin{tabular}[t]{@{}l}%
      \@author
    \end{tabular}\par}%
    \vskip 1.5em%
  {\small \@date \par}%
\end{flushleft}\par
\@thanks
\vfill\null
\rhead{\@author}
\pagestyle{plain}
\renewcommand{\headrulewidth}{0pt} %obere Trennlinie
% \end{titlepage}%
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}
\makeatother
\endinput
