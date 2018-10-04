%% ----------------------------------------------------------------
%% ctext --- Seventh Alphabet Classes text class
%%
%% Copyright (C) 2017 by Alexander Bartolomey --- occloxium@gmail.com
%% This File may be distributed and/or modified under the condition of the below
%% license.
%%
%% MIT License Copyright (c) 2017
%%
%% Permission is hereby granted, free of charge, to any person obtaining a copy
%% of this software and associated documentation files (the "Software"), to deal
%% in the Software without restriction, including without limitation the rights
%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%% copies of the Software, and to permit persons to whom the Software is
%% furnished to do so, subject to the following conditions:
%%
%% The above copyright notice and this permission notice shall be included in all
%% copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%% SOFTWARE.
%%
%% This work is "maintained" (as per LPPL maintenance status) by
%% Alexander Bartolomey.
%%
%% This work consists of the file  gtext.dtx
%% and the derived files           gtext.ins,
%%                                 gtext.pdf and
%%                                 gtext.cls.
%%
%%
%% ----------------------------------------------------------------
%% DISCLAIMBER: gtext mostly serves as a ctext clone with completely different styling to
%% differentiate homeworks, which are contentwise completely equal to prevent us from doing them
%% twice
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gtext}[2016/12/07 G Text Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass[a4paper,twocolumn]{article}
\makeatletter
\usepackage[left=1.25cm,right=1.25cm,top=1.25cm,bottom=1.25cm,includeheadfoot]{geometry}
\let\footruleskip\undefined
\usepackage[utf8]{inputenc}
\usepackage[english,german]{babel}
\newcommand{\headingstyle}[1]{\renewcommand{\@headingstyling}[#1]}
\newcommand{\@headingstyling}{\rmfamily} %

\usepackage{titlesec,enumitem,graphicx,float,xifthen,translations,lmodern,csquotes,etoolbox,fancyhdr,kvoptions}
\usepackage[linktocpage=true]{hyperref}
\SetupKeyvalOptions{
  family=ctext,
  prefix=ctext@
}
\ProcessKeyvalOptions*
\newcommand{\ctext}{\textsc{cText} }
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
\DeclareTranslation{English}{tof}{List of Figures}
\DeclareTranslationFallback{tot}{Tabellenverzeichnis}
\DeclareTranslation{German}{tot}{Tabellenverzeichnis}
\DeclareTranslation{English}{tot}{List of Tables}
% \setlrmarginsandblock{0.5in}{0.5in}{*}
% \setulmarginsandblock{0.5in}{0.5in}{*}
% \checkandfixthelayout
\addto\captionsgerman{\renewcommand{\contentsname}{\Large\@headingstyling \GetTranslation{toc}}}
\addto\captionsgerman{\renewcommand{\listfigurename}{\Large\@headingstyling \GetTranslation{tof}}}
\addto\captionsgerman{\renewcommand{\listtablename}{\Large\@headingstyling \GetTranslation{tot}}}
\addto\captionsenglish{\renewcommand{\contentsname}{\Large\@headingstyling \GetTranslation{toc}}}
\addto\captionsenglish{\renewcommand{\listfigurename}{\Large\@headingstyling \GetTranslation{tof}}}
\addto\captionsenglish{\renewcommand{\listtablename}{\Large\@headingstyling \GetTranslation{tot}}}
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}
\titleformat{\chapter}{\vspace*{6cm}\Huge\@headingstyling}{\thechapter}{0.5em}{}
\titleformat{\section}{\Large\@headingstyling}{\thesection}{0.5em}{}
\titleformat{\subsection}{\large\@headingstyling}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}{\@headingstyling}{\thesubsubsection}{0.5em}{}
\titleformat{\paragraph}{\@headingstyling}{\theparagraph}{0.5em}{}
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}
\renewcommand*{\thefootnote}{(\arabic{footnote})}
\counterwithin{figure}{section}
\counterwithin{table}{section}
\counterwithout{section}{chapter}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}
\newcommand\@group{}
\newcommand{\group}[1]{\renewcommand\@group{\GetTranslation{gruppe} #1}}
\newcommand{\team}[1]{\renewcommand\@group{Team #1}}
\fancyhf{}
\lhead{\small\@headingstyling \@group}
\newcommand{\preface}[1]{\renewcommand{\@preface}{#1}}
\newcommand{\@preface}{}
\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\renewcommand\@subtitle{#1}}
\newcommand{\@datehook}{}
\newcommand{\hasDeadline}{\renewcommand\@datehook{\GetTranslation{abgabe}:\ }}
\renewcommand{\and}{\end{tabular}\\ \begin{tabular}[t]{c}}
\newcommand{\@thankshook}{}
\renewcommand{\thanks}[1]{\renewcommand{\@thanks}{#1}\renewcommand{\@thankshook}{\begingroup\renewcommand\thefootnote{*}\footnote{\@thanks}\endgroup}}
\renewcommand\maketitle{%
\thispagestyle{fancy}%
\null%
\vskip 30\p@%
\pagestyle{plain}%
\begin{center}
{\textsc{\@preface}\par\Huge\textsc{\@headingstyling\@title}\par\normalsize\textnormal{\@subtitle\ifthenelse{\isempty{\@subtitle}\OR\isempty{\@date}}{ }{ | }\@datehook\@date}\par}%
\end{center}%
\vspace{1.5em}%
{\normalsize%
 %\lineskip .75em%
  \begin{tabular}[t]{c}%
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
