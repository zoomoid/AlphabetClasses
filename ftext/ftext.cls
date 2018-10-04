%%
%% This is file `ftext.cls'
%% ----------------------------------------------------------------
%% etext --- Sixth Alphabet Classes text class
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
%% This work consists of the file  ftext.cls
%% and the derived files
%% ----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ftext}[2017/09/30 F Text Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass[a4paper]{article}
\makeatletter
\usepackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm,includeheadfoot]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{titlesec,enumitem,float,xifthen,translations,lmodern,csquotes,fancyhdr}
\RequirePackage[linktocpage=true]{hyperref}
\newcommand{\etext}{\textsc{eText} }
\pagestyle{plain}
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}
\counterwithin{figure}{section}
\counterwithin{table}{section}
% \counterwithout{section}{chapter}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}
\pagestyle{fancy}
\fancyhf{}
\newcommand{\@subtitle}{}
\newcommand{\subtitle}[1]{\renewcommand\@subtitle{#1}}
\newcommand{\@datehook}{}
\renewcommand{\and}{\end{tabular}\\ \begin{tabular}[t]{@{}l}}
\renewcommand\maketitle{
\thispagestyle{fancy}%
\null%
\vskip 30\p@
\begin{flushleft}%
  {\Huge\@title\par\vspace{0.2em}\normalsize \@subtitle\ifthenelse{\equal{\@subtitle}{}\OR\equal{\@date}{}}{ }{ | }\@datehook\@date\par}%
  \vskip 1.5em%
  {\small%
   \lineskip .75em%
    \begin{tabular}[t]{@{}l}%
      \@author%
    \end{tabular}\par}%
\end{flushleft}\par
\@thanks%
\vspace{2em}%
\pagestyle{plain}%
\renewcommand{\headrulewidth}{0pt} %obere Trennlinie
\setcounter{footnote}{0}%
}
\makeatother
\endinput
