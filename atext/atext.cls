%%
%% This is file `atext.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% atext.dtx  (with options: `class')
%% ----------------------------------------------------------------
%% atext --- First Alphabet Classes text class
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
%% ----------------------------------------------------------------
%%
%%
%% Copyright (C) 2017 by Alexander Bartolomey --- occloxium@gmail.com
%%
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
%% This work consists of the file  atext.cls
%% and the derived files
%%
%%
%%
%%
%% End of file `atext.cls'.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atext}[2016/12/07 A Text Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions \relax
\LoadClass[a4paper]{memoir}
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
\newcommand{\atext}{\textsc{aText} }
\setlrmarginsandblock{2.5cm}{2.5cm}{*}
\setulmarginsandblock{2.5cm}{2.5cm}{*}
\checkandfixthelayout
\maxtocdepth{subsection}
\addto\captionsngerman{\renewcommand{\contentsname}{\sffamily Inhaltsverzeichnis}}
\addto\captionsngerman{\renewcommand{\listfigurename}{\sffamily\LARGE\bfseries Abbildungsverzeichnis}}
\pagestyle{plain}
\chapterstyle{default}
\maxsecnumdepth{subsection}
\titleformat{\chapter}{\normalfont\sffamily\LARGE\bfseries}{#1\ \thechapter}{0.5em}{}
\titleformat{\section}{\normalfont\sffamily\Large\bfseries}{#1\ \thesection}{0.5em}{}
\titleformat{\subsection}{\normalfont\sffamily\large\bfseries}{#1\ \thesubsection}{0.5em}{}
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}
\counterwithin{figure}{section}
\counterwithout{section}{chapter}
\counterwithin{chapter}{part}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}
\preauthor{\begin{flushleft}%
           \large \lineskip 0.5em%
           \begin{tabular}[t]{@{}l}}
\postauthor{\end{tabular}\end{flushleft}}

\renewcommand*\and{%
  \end{tabular}%
  \hskip 1em \relax
  \begin{tabular}[t]{l}}
\renewcommand*{\andnext}{%
  \end{tabular}\\ \begin{tabular}[t]{@{}l}}
\predate{\begin{flushleft}}
\postdate{\end{flushleft}}
\pretitle{\begin{flushleft}\Huge\sffamily\bfseries }
\posttitle{\par\end{flushleft}}

\endinput
