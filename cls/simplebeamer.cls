\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplebeamer}
\LoadClass[aspectratio=1610]{beamer}

% Chinese font
\RequirePackage{xeCJK}
\setCJKmainfont{NotoSansSC}[
	Path            =  ./cls/fonts/  ,
	Extension       =  .ttf  ,
	UprightFont     =  *-Light  ,
	BoldFont        =  *-Medium 
]

% English font
\RequirePackage{fontspec}
\setmainfont{OpenSans}[
	Path            =  ./cls/fonts/  ,
	Extension       =  .ttf  ,
	UprightFont     =  *-Light  ,
	BoldFont        =  *-Medium  ,
	ItalicFont      =  *-LightItalic  ,
	BoldItalicFont  =  *-MediumItalic
]

% Itemize items
\RequirePackage{typicons}
\setbeamertemplate{itemize item}{\tiChevronRightOutline}
\setbeamertemplate{itemize subitem}{\tiMinusOutline}

% Title page
\setbeamerfont{subtitle}{size=\small}
\setbeamerfont{institute}{size=\small}
\setbeamerfont{date}{size=\small}
\setbeamerfont{author}{size=\large}

% Footer
\beamertemplatenavigationsymbolsempty
\setbeamertemplate{footline}{
    \hfill
    \footnotesize
    \color{structure!75}\insertframenumber ~\tiMediaRewindOutline~\inserttotalframenumber
    \hspace{0.5em}
    \vspace{0.5em}
}

% Table row spacing
\renewcommand{\arraystretch}{1.5}

% Code styles
\RequirePackage{listings}
\lstset{     
    basicstyle=\ttfamily,     
    keywordstyle=\color{blue}, 
    commentstyle=\color{gray}, 
    stringstyle=\color{red},
	showstringspaces=false,   
    numbers=left,              
    numberstyle=\tiny\color{gray}, 
    stepnumber=1,             
    numbersep=10pt,           
    frame=single,
	captionpos=b,
	columns=fullflexible,
	breaklines=true,
	xleftmargin=2em, 
 	xrightmargin=2em             
}