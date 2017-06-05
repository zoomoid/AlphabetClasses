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
\makeatletter

\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage[linktocpage=true]{hyperref}
\RequirePackage{tocloft}
\RequirePackage{float}
\RequirePackage{ifthen}
\RequirePackage{translations}
\RequirePackage{lmodern}
\RequirePackage{csquotes}
\RequirePackage{fancyhdr}

\DeclareTranslationFallback{abgabe}{Abgabe}
\DeclareTranslation{German}{abgabe}{Abgabe}
\DeclareTranslation{English}{abgabe}{Due date}
\DeclareTranslationFallback{gruppe}{Gruppe}
\DeclareTranslation{German}{gruppe}{Gruppe}
\DeclareTranslation{English}{gruppe}{Group}
\DeclareTranslationFallback{toc}{Inhaltsverzeichnis}
\DeclareTranslation{German}{toc}{Inhaltsverzeichnis}
\DeclareTranslation{English}{toc}{Table of Contents}
\DeclareTranslationFallback{tof}{Abbildungsverzeichnis}
\DeclareTranslation{German}{tof}{Abbildungsverzeichnis}
\DeclareTranslation{English}{tof}{Table of Figures}

\setlrmarginsandblock{1in}{1in}{*}
\setulmarginsandblock{1in}{1in}{*}
\checkandfixthelayout

\addto\captionsngerman{\renewcommand{\contentsname}{\sffamily\Large\bfseries \GetTranslation{toc}}}
\addto\captionsngerman{\renewcommand{\listfigurename}{\sffamily\Large\bfseries \GetTranslation{tof}}}
\pagestyle{plain}

\titleformat{\chapter}{\sffamily\LARGE\bfseries}{\ \thechapter}{0.5em}{}
\titleformat{\section}{\sffamily\Large\bfseries}{\ \thesection}{0.5em}{}
\titleformat{\subsection}{\sffamily\large\bfseries}{\ \thesubsection}{0.5em}{}
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}
\counterwithin{figure}{section}
\counterwithin{table}{section}
\counterwithout{section}{chapter}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}

\renewcommand{\arraystretch}{1.2}

\newcommand\@group{}
\newcommand{\group}[1]{\renewcommand\@group{\GetTranslation{gruppe} #1}}
\newcommand{\team}[1]{\renewcommand\@group{Team #1}}
\pagestyle{fancy}
\fancyhf{}
\lhead{\bfseries\sffamily\small \@group}

\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\renewcommand\@subtitle{#1}}

\newcommand{\@datehook}{}

\newcommand{\hasDeadline}{\renewcommand\@datehook{\GetTranslation{abgabe}:\ }}

\renewcommand{\and}{\end{tabular}\\ \begin{tabular}[t]{@{}l}}

\renewcommand\maketitle{
\thispagestyle{fancy}
\null
\vskip 30\p@
\begin{flushleft}%
  {\LARGE\sffamily\bfseries\@title\par\vspace{0.2em}\normalsize \@subtitle\ifthenelse{\equal{\@subtitle}{}\OR\equal{\@date}{}}{ }{ | }\@datehook\@date\par}%
  \vskip 1.5em%
  {\small
   \lineskip .75em%
    \begin{tabular}[t]{@{}l}%
      \@author
    \end{tabular}\par}%
\end{flushleft}\par
\@thanks
\vspace{2em}
\pagestyle{plain}
\renewcommand{\headrulewidth}{0pt} %obere Trennlinie
\setcounter{footnote}{0}
}
\makeatother

\endinput
