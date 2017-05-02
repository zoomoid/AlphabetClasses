% atext.cls
%
% This class is based off of the memoir class and performs some stylistic
% changes to the general document proportions and minor changes to both
% predefined commands like \tableofcontent and the actual text itself
%
% This class DOES NOT include my amath package, with has to be done seperately
% to enable math support
%
% This class provides layout for scientific papers and articles and
% furthermore flow text fitted to my stylistic needs

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atext}[2016/12/07 A Text Package]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ProcessOptions \relax

\LoadClass{memoir}

% Load up necessary packages
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[ngerman]{babel}
\usepackage[explicit]{titlesec}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage[linktocpage=true]{hyperref}
\usepackage{tocloft}
\usepackage{float}
\usepackage{lmodern}
\usepackage{listings}

\newcommand{\atext}{{\ttfamily ATEXT} }
\newcommand{\bmath}{{\ttfamily BMATH} }
\newcommand{\amath}{{\ttfamily AMATH} }


% PAGE STYLING
\setlrmarginsandblock{2.5cm}{2.5cm}{*}
\setulmarginsandblock{2.5cm}{2cm}{*}
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

\titleformat{\chapter}{\normalfont\sffamily\LARGE\bfseries}{\thesection}{0.5em}{}

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

\titleformat{\section}{\sffamily\bfseries\Large}{}{0em}{#1\ \thesection}
\titleformat{\subsection}{\sffamily\bfseries\large}{}{0em}{#1\ \thesubsection}

\let\oldsection\section
\renewcommand\section{\clearpage\oldsection}

\newcommand{\aufgabe}{\section{Aufgabe}}
\newcommand{\teilaufgabe}{\subsection{Teilaufgabe}}

\lstset{basicstyle=\normalsize\ttfamily,escapeinside={(*@}{@*)},breaklines=true}

\endinput