%%
%% This is file `dtext.cls'
%% ----------------------------------------------------------------
%% dtext --- Fourth Alphabet Classes text class
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
%% This work consists of the file  dtext.cls
%% and the derived files
%%
%% End of file `dtext.cls'.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dtext}[2016/12/07 D Text Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions \relax
\LoadClass[a4paper]{memoir}
\RequirePackage{charter}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[explicit]{titlesec}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage[linktocpage=true]{hyperref}
\RequirePackage{tocloft}
\RequirePackage{float}
\RequirePackage{listings}
\RequirePackage{csquotes}
\RequirePackage{titling}
\RequirePackage{textcomp}
\RequirePackage{gensymb}
\RequirePackage{fancyhdr}
\setlrmarginsandblock{2.5cm}{2.5cm}{*}
\setulmarginsandblock{2.5cm}{2.5cm}{*}
\checkandfixthelayout
\maxtocdepth{subsection}
\pagestyle{plain}
\chapterstyle{default}
\maxsecnumdepth{subsection}
\let\ocite\cite
\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}
\counterwithin{figure}{section}
\counterwithout{section}{chapter}
\counterwithin{chapter}{part}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}
\makeatletter
\renewcommand\maketitle{
\null
\vskip 30\p@
\begin{center}%
  {\Huge\bfseries\@title\par}%
  \vfill%
  {\small%
   \lineskip .75em%
    \begin{tabular}[t]{c}%
      \@author
    \end{tabular}\par}%
\end{center}\par
\pagebreak
}
\makeatother
\endinput
