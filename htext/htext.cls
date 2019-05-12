%% ----------------------------------------------------------------
%% htext --- eigth Alphabet Classes text class
%%
%% Copyright (C) 2018 by Alexander Bartolomey --- occloxium@gmail.com
%% This File may be distributed and/or modified under the condition of the below
%% license.
%%
%% MIT License Copyright (c) 2018
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
%% This work consists of the file  htext.dtx
%% and the derived files           htext.ins,
%%                                 htext.pdf and
%%                                 htext.cls.
%%
%%
%% ----------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htext}[2019/05/10 H Text Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass[a4paper,12pt]{article}
\makeatletter
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm,includeheadfoot]{geometry}
\let\footruleskip\undefined
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,ngerman]{babel}
\RequirePackage{xcolor,titlesec,enumitem,graphicx,float,xifthen,translations,csquotes,etoolbox,fancyhdr,kvoptions}
\RequirePackage[linktocpage=true]{hyperref}
\RequirePackage{mathpazo,helvet}

\DeclareBoolOption[false]{alex}
\DeclareBoolOption[false]{hendrik}
\DeclareBoolOption[false]{johannes}

\SetupKeyvalOptions{
  family=htext,
  prefix=htext@
}
\ProcessKeyvalOptions*

\newcommand{\hText}{\textsc{hText} }

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

\newcommand{\headingstyle}[1]{%
  \renewcommand{\@headingstyling}[#1]%
}

\newcommand{\@headingstyling}{%
  \sffamily\bfseries%
}

\addto\captionsgerman{%
  \renewcommand{\contentsname}{%
    \Large\@headingstyling \GetTranslation{toc}%
  }%
}

\addto\captionsgerman{%
  \renewcommand{\listfigurename}{%
    \Large\@headingstyling \GetTranslation{tof}%
  }%
}

\addto\captionsgerman{%
  \renewcommand{\listtablename}{%
    \Large\@headingstyling \GetTranslation{tot}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\contentsname}{%
    \Large\@headingstyling \GetTranslation{toc}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\listfigurename}{%
    \Large\@headingstyling \GetTranslation{tof}%
  }%
}

\addto\captionsenglish{%
  \renewcommand{\listtablename}{%
    \Large\@headingstyling \GetTranslation{tot}%
  }%
}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\titleformat{\section}%
  {\LARGE\@headingstyling}%
  {\thesection}%
  {0.5em}%
  {}%

\titleformat{\subsection}
  {\Large\@headingstyling}%
  {\thesubsection}%
  {0.5em}%
  {}%

\titleformat{\subsubsection}%
  {\large\@headingstyling}%
  {\thesubsubsection}%
  {0.5em}%
  {}%

\titleformat{\paragraph}
  {\@headingstyling}%
  {\theparagraph}%
  {0.5em}%
  {}%

\let\ocite\cite
\renewcommand{\cite}[1]{%
  \textsuperscript{\ocite{#1}}%
}
\renewcommand*{\thefootnote}{%
  (\arabic{footnote})%
}
\counterwithin{figure}{section}
\counterwithin{table}{section}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}
\renewcommand{\arraystretch}{1.2}

\newcommand\@group{%
  %
}
\newcommand{\group}[1]{%
  \renewcommand{\@group}{%
    \GetTranslation{gruppe} #1%
  }%
}
\newcommand{\team}[1]{%
  \renewcommand\@group{Team #1}%
}

\fancyhf{}
\lhead{\small\@headingstyling \@group}
\setlength\headheight{1cm}

\newcommand{\alex}{\relax}
\newcommand{\hendrik}{\relax}
\newcommand{\johannes}{\relax}

\ifhtext@alex
  \renewcommand{\alex}{\includegraphics[height=1cm]{alex.png}}
\fi
\ifhtext@hendrik
\renewcommand{\hendrik}{\includegraphics[height=1cm]{hendrik.png}}
\fi
\ifhtext@johannes
  \renewcommand{\johannes}{\includegraphics[height=1cm]{johannes.png}}
\fi
\rhead{{\johannes}{\alex}{\hendrik}}
\newcommand{\@subtitle}{%
  %
}

\setlength{\unitlength}{15mm}
\newcommand{\blob}{\rule{2\unitlength}{.4\unitlength}}
\rfoot{
  \vskip 0.5cm
  \begin{picture}(0,0)
    \put(0,0){\blob}
    \put(0.2,0.1){\color{white}{\textsf{\textbf{\thepage}}}}
  \end{picture}
}

\newcommand{\subtitle}[1]{%
  \renewcommand\@subtitle{#1}%
}

\newcommand{\@datehook}{%
  %
}
\newcommand{\hasDeadline}{%
  \renewcommand\@datehook{%
    \GetTranslation{abgabe}:\ %
  }%
}
\renewcommand{\and}{%
  \end{tabular}\\%
  \begin{tabular}[t]{@{}l}%
}
\newcommand{\@thankshook}{%
  %
}

\renewcommand{\thanks}[1]{%
  \renewcommand{\@thanks}{#1}%
}

\renewcommand{\@thankshook}{%
  \renewcommand{\thefootnote}{*}%
  \footnote{\@thanks}%
}

\renewcommand\maketitle{%
  % \thispagestyle{fancy}%
  \begin{center}%
  {%
    \Huge\@headingstyling\@title\par\normalsize%
    \textnormal{%
      \@subtitle\ifthenelse{%
        \equal{\@subtitle}{}\OR\equal{\@date}{}
      }{}{ | }%
      \@datehook\@date%
    }\par%
  }%
  \end{center}%
  \vskip 1.5em%
  {%
    \normalsize%
    \begin{tabular}[t]{@{}l}%
      \@author%
    \end{tabular}%
  }%
  \par%
  \vskip 2em%
  \renewcommand{\headrulewidth}{0.4pt}%
  \setcounter{footnote}{0}%
  \pagestyle{fancy}%
}
\let\oappendix\appendix
\renewcommand{\appendix}{\renewcommand{\thesection}{\Alph{section}}\oappendix}
\makeatother
\endinput

