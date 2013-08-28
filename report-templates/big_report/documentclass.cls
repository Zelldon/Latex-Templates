\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{documentclass}[2013/08/28 Document class wich is used for the report latex documents.]
%\LoadClass{scrreprt}

\LoadClass[a4paper,12pt]{scrreprt} %scrbook


%==============================================================================
%																		FORMAT
%==============================================================================
%
\RequirePackage[latin1]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

\RequirePackage{arydshln} %for the dashed lines

\RequirePackage[explicit, noindentafter]{titlesec}
\RequirePackage{xcolor}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{float}
\RequirePackage[final]{graphicx}
\RequirePackage[numberedsection=autolabel,toc=true,nonumberlist=true,acronym]{glossaries}
\RequirePackage{pdflscape}
%==============================================================================
%																		RESOURCES
%==============================================================================
%

\RequirePackage{wrapfig}
\RequirePackage{dirtree} %for the resource tree


%==============================================================================
%																		BILBIOGRAPHIE
%==============================================================================
\RequirePackage[german]{babel}
\RequirePackage[babel,german=guillemets]{csquotes}
\MakeOuterQuote{+}
\RequirePackage[backend=biber,style=authoryear-icomp,bibstyle=authoryear]{biblatex} %authortitle-icomp
\addbibresource{biblio.bib}
\setlength{\bibitemsep}{\itemsep}

%==============================================================================
%																		Listings
%==============================================================================
\definecolor{javared}{rgb}{0.6,0,0} % for strings
\definecolor{javagreen}{rgb}{0.25,0.5,0.35} % comments
\definecolor{javapurple}{rgb}{0.5,0,0.35} % keywords
\definecolor{javadocblue}{rgb}{0.25,0.35,0.75} % javadoc

\RequirePackage{listings} 
		%==========================================================
		%														DEFAULT - JAVA
		%==========================================================
		
		\lstset{language=Java} 
		\lstset{keywordstyle=\color{javapurple}\ttfamily}%\bfseries} 
		\lstset{breaklines=true} 
		\lstset{basicstyle=\tiny\ttfamily}%\ttfamily\fontsize{10}{10}} 
		\lstset{xleftmargin=10px}
		\lstset{tabsize=2}
		\lstset{frameround=ffff}
		\lstset{frame=single}
		\lstset{framerule=1pt}
		\lstset{backgroundcolor=\color{background}}
		\lstset{numbers=right}
		\lstset{numberstyle=\tiny}
		\lstset{showstringspaces=false}
		\lstset{stringstyle=\color{javared}}
		\lstset{commentstyle=\color{javagreen}}
		\lstset{morecomment=[s][\color{javadocblue}]{/**}{*/}}
		%==========================================================
		%																		JSON
		%==========================================================
		
		\colorlet{punct}{red!60!black}
		\definecolor{background}{HTML}{EEEEEE}
		\definecolor{delim}{RGB}{20,105,176}
		\colorlet{numb}{magenta!60!black}
		
		\lstdefinelanguage{json}{
		    backgroundcolor=\color{background},
		    literate=
		     *{0}{{{\color{numb}0}}}{1}
		      {1}{{{\color{numb}1}}}{1}
		      {2}{{{\color{numb}2}}}{1}
		      {3}{{{\color{numb}3}}}{1}
		      {4}{{{\color{numb}4}}}{1}
		      {5}{{{\color{numb}5}}}{1}
		      {6}{{{\color{numb}6}}}{1}
		      {7}{{{\color{numb}7}}}{1}
		      {8}{{{\color{numb}8}}}{1}
		      {9}{{{\color{numb}9}}}{1}
		      {:}{{{\color{javared}{:}}}}{1}
		      {,}{{{\color{javared}{,}}}}{1}
		      {\{}{{{\color{javared}{\{}}}}{1}
		      {\}}{{{\color{javared}{\}}}}}{1}
		      {[}{{{\color{javared}{[}}}}{1}
		      {]}{{{\color{javared}{]}}}}{1}
		}
		
		
		%==========================================================
		%																		PROPERTIES
		%==========================================================
		\lstdefinelanguage{properties}{
		    backgroundcolor=\color{background},
		    morecomment=[l]{\#},
		    basicstyle=\tiny\ttfamily\color{javared},
			numberstyle=\tiny\color{black},
		    rulecolor=\color{black},
		    morecomment=[l][\color{black}]{=},
		    literate=
		     *{0}{{{\color{numb}0}}}{1}
		      {1}{{{\color{numb}1}}}{1}
		      {2}{{{\color{numb}2}}}{1}
		      {3}{{{\color{numb}3}}}{1}
		      {4}{{{\color{numb}4}}}{1}
		      {5}{{{\color{numb}5}}}{1}
		      {6}{{{\color{numb}6}}}{1}
		      {7}{{{\color{numb}7}}}{1}
		      {8}{{{\color{numb}8}}}{1}
		      {9}{{{\color{numb}9}}}{1}
		      {.}{{{\color{javared}{.}}}}{1}
		      {,}{{{\color{javared}{,}}}}{1}
		      %{=}{{{\color{javared}{=}}}}{1}
		}
		
		%==========================================================
		%																		HTTP-HEADER
		%==========================================================
		\lstdefinelanguage{header}{
		    backgroundcolor=\color{background},
		    basicstyle=\tiny\ttfamily\color{javared},
			numberstyle=\tiny\color{black},
		    rulecolor=\color{black},
		    morecomment=[l][\color{black}]{:},
		    literate=
		     *{0}{{{\color{numb}0}}}{1}
		      {1}{{{\color{numb}1}}}{1}
		      {2}{{{\color{numb}2}}}{1}
		      {3}{{{\color{numb}3}}}{1}
		      {4}{{{\color{numb}4}}}{1}
		      {5}{{{\color{numb}5}}}{1}
		      {6}{{{\color{numb}6}}}{1}
		      {7}{{{\color{numb}7}}}{1}
		      {8}{{{\color{numb}8}}}{1}
		      {9}{{{\color{numb}9}}}{1}
		      {.}{{{\color{javared}{.}}}}{1}
		      {,}{{{\color{javared}{,}}}}{1}
		      %{=}{{{\color{javared}{=}}}}{1}
		}

\renewcommand{\lstlistingname}{Beispiel} 
\renewcommand{\lstlistlistingname}{Beispielverzeichnis}
% \titlespacing{⟨Überschriftenklasse⟩}{⟨Linker Einzug⟩}{⟨Platz oberhalb⟩}{⟨Platz unterhalb⟩}[⟨rechter Einzug⟩]
%==============================================================================
%																		SPACING
%==============================================================================
\titlespacing{\chapter}{0pt}{-2cm}{2cm}
\titlespacing{\section}{0pt}{1cm}{5mm}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
%\titleformat{ command }[ shape ]{ format }{ label }{ sep }{ before }[ after ]
%https://www.google.de/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0CDwQFjAB&url=http%3A%2F%2Fwww.ctex.org%2Fdocuments%2Fpackages%2Flayout%2Ftitlesec.pdf&ei=fAxKUa3uE4nPtQb_n4Fo&usg=AFQjCNGJ4U5oVvu0Nk86mtIH2kO4oCO7mw&bvm=bv.44011176,d.Yms&cad=rja

\RequirePackage{calc} %to calculate the text width!
%==============================================================================
%																		CHAPTER-STYLE
%==============================================================================
%\titleformat{\chapter}
%            {\Huge\scshape\raggedleft}
%            {}
%            {0em}
%            {
%              \colorbox{gray}
%              {\parbox{\dimexpr\textwidth-5\fboxsep\relax}    
%                {\textcolor{white}      
%                  {
%                  \vspace{5mm} \\
%                    \thechapter
%                    \hfill
%                    \quad#1
%                  }
%                }
%              }
%            }
\titleformat{\chapter}
            {\Huge\scshape\center}
            {}
            {0em}
            {\newline
            \quad#1 \\[-15mm]
            \rule[-5mm]{\widthof{#1}+20pt}{0.4pt}
            \\
%            \ifnum\thechapter>0
				\thechapter%\fi
            }
            
%==============================================================================
%																		CHAPTER-STYLE with STAR
\titleformat{name=\chapter, numberless=true}
            {\Huge\scshape\center}
            {}
            {0em}
            {\newline
            \quad#1 \\[-15mm]
            \rule[-5mm]{\widthof{#1}+20pt}{0.4pt}
            \\
%            \ifnum\thechapter>0
%				\thechapter\fi
            }
%==============================================================================
%																		SECTION-STYLE
%==============================================================================

\titleformat{\section}
            {\huge\scshape\raggedleft}
            {}{0em}
            {
            	\\ 
             	{\thesection \hfill \hspace{0pt}}
             	\\[-12mm]
            }
            [\hrule \quad#1]
            
%==============================================================================
%																		SECTION-STYLE with STAR
            
\titleformat{name=\section, numberless=true}
            {\huge\scshape\raggedleft}
            {}{0em}
            {
            	\\ 
             	{
             	%\thesection 
             	\hfill \hspace{0pt}}
             	\\[-12mm]
            }
            [\hrule \quad#1]

%\titleformat{\section}         % Customise the \section command 
%  {\Large\scshape\raggedleft} % Make the \section headers large (\Large),
%                               % small capitals (\scshape) and left aligned (\raggedright)
%  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
%  {\titlerule \\}              % Can be used to insert code before the heading
%  [\titlerule]                 % Inserts a horizontal line after the heading
%  
%==============================================================================
%																SUB-SECTION-STYLE
%==============================================================================

\titleformat{\subsection}
            {\Large\scshape\raggedleft}
            {}{0em}
            {
            	\\
	             \thesubsection 
	             \hspace{60mm}\hfill
            }
            [
            \hrule
            %            \rule{\dimexpr\textwidth-45\fboxsep\relax}{0.4pt}
              \quad#1]
%==============================================================================
%																SUB-SECTION-STYLE with STAR
              
\titleformat{name=\subsection, numberless=true }
            {\Large\scshape\raggedleft}
            {}{0em}
            {
            	\\
	             %\thesubsection 
	             \hspace{60mm}\hfill
            }
            [
            \hrule
            \quad#1]

%==============================================================================
%																GLOSSAR
%==============================================================================
%\newglossaryentry{<label>}{<settings>}
\renewcommand*{\glspostdescription}{}

\makeglossaries
