\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tpm}[2016/12/07 TPM]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions \relax
\LoadClass[a4paper]{memoir}
\makeatletter
\let\footruleskip\undefined
\usepackage[utf8]{inputenc}
\usepackage[english,german]{babel}
\newcommand{\headingstyle}[1]{\renewcommand{\@headingstyling}[#1]}
\newcommand{\@headingstyling}{\sffamily\bfseries} %
\usepackage{titlesec,xifthen,translations,lmodern,etoolbox,fancyhdr}
\newcommand{\tpm}{\textsc{TPM} }
\DeclareTranslationFallback{abgabe}{Abgabe}
\DeclareTranslation{German}{abgabe}{Abgabe}
\DeclareTranslation{English}{abgabe}{Due date}
\DeclareTranslationFallback{gruppe}{Gruppe}
\DeclareTranslation{German}{gruppe}{Gruppe}
\DeclareTranslation{English}{gruppe}{Group}
\setlrmarginsandblock{1in}{1in}{*}
\setulmarginsandblock{1in}{1in}{*}
\checkandfixthelayout
\renewcommand*{\thefootnote}{(\arabic{footnote})}
\renewcommand{\arraystretch}{1.2}
\newcommand\@group{}
\newcommand{\group}[1]{\renewcommand\@group{\GetTranslation{gruppe} #1}}
\newcommand{\team}[1]{\renewcommand\@group{Team #1}}
\fancyhf{}
\lhead{\small\@headingstyling \@group}
\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\renewcommand\@subtitle{#1}}
\newcommand{\@datehook}{}
\newcommand{\hasDeadline}{\renewcommand\@datehook{\GetTranslation{abgabe}:\ }}
\renewcommand{\and}{\end{tabular}\\ \begin{tabular}[t]{@{}l}}
\newcommand{\@thankshook}{}
\renewcommand{\thanks}[1]{\renewcommand{\@thanks}{#1}\renewcommand{\@thankshook}{\begingroup\renewcommand\thefootnote{*}\footnote{\@thanks}\endgroup}}
\renewcommand\maketitle{%
\thispagestyle{fancy}%
\null%
\vskip 120\p@%
\pagestyle{plain}%
{\Huge\@headingstyling\@title\par\vspace{0.5em}\normalsize\textnormal{\@subtitle\ifthenelse{\isempty{\@subtitle}\OR\isempty{\@date}}{ }{ | }\@datehook\@date}\par}%
\vspace{1.5em}%
{\normalsize%
 %\lineskip .75em%
  \begin{tabular}[t]{@{}l}%
    \@author%
  \end{tabular}\!\!\!\@thankshook\par}%
\par%
\vspace{2em}%
\renewcommand{\headrulewidth}{0pt}%
\setcounter{footnote}{0}%
}
\let\oappendix\appendix
\renewcommand{\appendix}{%
\renewcommand{\thesection}{\Alph{section}}%
\renewcommand{\thechapter}{\Alph{chapter}}%
\oappendix%
}
\makeatother
\endinput
