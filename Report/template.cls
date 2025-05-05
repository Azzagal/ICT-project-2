\ProvidesClass{template}[]

\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%PACKAGES%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{bbold}
\RequirePackage{bm}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage[margin=3cm]{geometry}
\RequirePackage{colortbl}
\RequirePackage{diagbox}
\RequirePackage{enumitem}
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage[table]{xcolor}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand{\HRulegrossier}{\rule{\linewidth}{1.2mm}}
\geometry{hmargin=2.5cm,vmargin=2cm}
\RequirePackage{url}
\RequirePackage{float}
\RequirePackage{enumitem}
\renewcommand{\arraystretch}{1.5}
\RequirePackage{subcaption}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{multicol}
\RequirePackage{wrapfig}
\RequirePackage{bigints}
\setlength{\headheight}{14pt}
\RequirePackage{sidecap}
\RequirePackage[english]{babel}
\RequirePackage{comment}
\RequirePackage{cancel}
\RequirePackage{listings}
% Permet de centrer les légendes
\RequirePackage[justification = centering]{caption}

%------------------------
% En-tête et pied de page
%------------------------
\RequirePackage{fancyhdr}
\pagestyle{fancy}

%------------------------
% Setup hyperlien
%------------------------
\hypersetup{
    colorlinks=true,      % Active la couleur pour les liens
    linkcolor=blue,       % Couleur des liens internes (table des matières, sections)
    citecolor=blue,       % Couleur des citations (si applicable)
    filecolor=blue,       % Couleur des liens vers les fichiers
    urlcolor=blue         % Couleur des liens URL
}


\newenvironment{authors}[1]{%
    \newcommand{\addauthor}[3]{%
        \begin{minipage}{#1\textwidth}
            \begin{center}\large
                ##1\\\textsc{##2}\\##3
            \end{center}
        \end{minipage}
    }
}{}
\newenvironment{guardpage}
    {
    \newcommand{\guardimage}[2]{\begin{figure}[h!]\centering \includegraphics[width = ##2\textwidth]{##1}\end{figure}}
    \newcommand{\academicyear}[1]{\Large{Academic year ##1 }\\[1cm]}
    \newcommand{\addtitle}[2]{
        \HRule \\[0.2cm]
        \vspace{1.5mm}
        \textbf{\Large ##1  \\##2}
        \\[0.0cm]\HRule
        \\[.5cm]
        %MECA0011-2 Eléments de mécanique des fluides: Projet transversal
        \vspace{1.5cm}
        \vfill
    }

    
    
    
    \begin{titlepage}
    \begin{center}
        \begin{figure}
            \centering
            \includegraphics[width=\textwidth]{template_images/uliege-school-engineering.PDF}
        \end{figure}
        \Large{University of Liège}\\
        \vspace{1.8mm}
        \Large{Faculty of applied science}\\
        \vspace{1.8mm}
    
    }{\end{center}\end{titlepage}}

\newcommand{\graphic}[6]{
    \centering
    \begin{minipage}{#3\textwidth}
        \centering
        \includegraphics[width=#4\textwidth, scale=#5, clip]{#1}
        \ifthenelse{\equal{#6}{}}{}{\caption{#6}}
        \ifthenelse{\equal{#2}{}}{}{\label{#2}}
    \end{minipage}
}

\newcommand{\reff}[2]{
    \hyperref[#1]{\textsc{#2-\ref*{#1}}}
}

\newcommand{\state}[0]{\texttt{state} }



    