\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplereport}
\LoadClass[14pt, a4paper]{article} 
% Page Layout
\RequirePackage[top=2cm,bottom=2.5cm,left=2cm,right=2cm,headsep=12pt,a4paper]{geometry}  

% Useful packages 
\RequirePackage{amsmath}  % math
\RequirePackage{booktabs} % nice table
\RequirePackage{multirow} % table operations, e.g. merge cells
\RequirePackage{xcolor} % define color
\RequirePackage{color} % text color
\RequirePackage{float} % object alignment
\RequirePackage{graphicx} % graphic alignment
\RequirePackage{subcaption} % subcaption
\RequirePackage{tikz} % draw
\usetikzlibrary{shapes,arrows,arrows.meta,decorations.pathmorphing,backgrounds,positioning,fit,petri}
\RequirePackage{ulem} % text style: underline, overline, etc.
\RequirePackage{listings} % code
\RequirePackage{tcolorbox} % colored text box
\RequirePackage{xstring} % string operation (reformate date)

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

% Enumerate item
\RequirePackage{enumitem}
\RequirePackage{typicons} 
\renewcommand{\labelitemi}{\tiMinusOutline}
\renewcommand{\labelitemii}{\tiMediaRecordOutline}

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






