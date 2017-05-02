% btext.cls
%
% This class is based off of the koma-script class and performs some stylistic
% changes to the general document proportions and minor changes to both
% predefined commands like \tableofcontent and the actual text itself
%
% This class DOES NOT include my amath package, with has to be done seperately
% to enable math support
%
% This class provides layout for scientific papers and articles and
% furthermore flow text fitted to my stylistic needs

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{btext}[2016/12/07 B Text Package]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}

\ProcessOptions \relax

\LoadClass{scrartcl}

% Load up necessary packages
\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}
%\usepackage{titlesec}
\usepackage{enumitem}
%\usepackage{graphicx}
%\usepackage[linktocpage=true]{hyperref}
%\usepackage{tocloft}
%\usepackage{float}

%\chapterstyle{default}

%% Sektionen
%\maxsecnumdepth{subsection}
%\setsecheadstyle{\huge\sffamily\bfseries\raggedright}
%\setsubsecheadstyle{\Large\sffamily\bfseries\raggedright}

% Kapitel
% Page break after Section
%\let\oldsection\section
%\renewcommand\section{\clearpage\oldsection}

%\titleformat{\chapter}{\normalfont\sffamily\LARGE\bfseries}{\thesection}{0.5em}{}

% Fancy superscript for BibTex cites
%\let\ocite\cite
%\renewcommand{\cite}[1]{\textsuperscript{\ocite{#1}}}

%\renewcommand{\thesection{\arabic{section}}}

% Numbering bound to sections rather than chapters
%\counterwithin{figure}{section}

%\counterwithout{section}{chapter}
%\counterwithin{chapter}{part}

% paragraph indention
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.6em}

\renewcommand{\arraystretch}{1.2}


\endinput