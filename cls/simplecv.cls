\ProvidesClass{simplecv}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToClass{12pt}{article}
\ProcessOptions\relax
\LoadClass{article}
\pagestyle{empty}

% Layout
\RequirePackage[left=1.5cm,top=1cm,right=1.5cm,bottom=2.5cm,nohead,nofoot]{geometry}  

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

% Colors
\RequirePackage{xcolor}
\definecolor{title}{RGB}{0,80,80}
\definecolor{subtitle}{RGB}{80,80,80}
\definecolor{section}{RGB}{0,100,100}

% Header
% 	- Name
% 	- Postion
% 	- Contact

\newcommand{\name}[1]{\newcommand\@name{#1}}
\newcommand{\position}[1]{\newcommand\@position{#1}}
\newcommand{\contact}[1]{\newcommand\@contact{#1}}

\RequirePackage{ifthen}
\renewcommand{\maketitle}{%
  {\huge\bfseries\color{title}\@name}\\[12pt]
  \ifdefined\@position
  {\large\bfseries\color{subtitle} \@position}\\[8pt]
  \fi
  \ifdefined\@contact
  {\large\bfseries\color{subtitle} \@contact}\\[6pt]
  \fi
}

% Icons
\RequirePackage{typicons}
\newcommand{\phone}{\tiDevicePhone}
\newcommand{\mail}{\tiMail}
% enumerate item
\RequirePackage{enumitem} 
\renewcommand{\labelitemi}{\tiMinusOutline}

% Section
\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {\color{section}
  \Large\bfseries #1
  \vspace{\parskip}
  \hrule
  \vspace{\parskip}
  } 
}

% Paragraph spacing
\RequirePackage{parskip}
% Item row spacing
\renewcommand{\arraystretch}{1.2}