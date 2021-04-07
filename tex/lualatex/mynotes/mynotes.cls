\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\LoadClass[DIV=8]{scrartcl}

% Warn me when I have to compile again
\RequirePackage[aux]{rerunfilecheck}

% AMS packages
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}

% Font settings
\RequirePackage{fontspec}
\setromanfont{STIX Two Text}
\setsansfont{Noto Sans}
\setmonofont{Noto Mono}
\recalctypearea{}

% Initialize language
\RequirePackage[english]{babel}

% Math font settings
\RequirePackage[
	math-style=ISO,
	bold-style=ISO,
	sans-style=italic,
	nabla=upright,
	partial=upright,
	warnings-off={
		mathtools-colon,
		mathtools-overbracket,
	},
]{unicode-math}

\setmathfont{STIX Two Math}
\setmathfont{STIX}[range={scr, bfscr}]
\setmathfont{XITS Math}[range={cal, bfcal}, StylisticSet=1]

% Use serif for headings
\addtokomafont{disposition}{\rmfamily}
% Define \enquote according to language
\RequirePackage[autostyle]{csquotes}
% Typographic optimizations
\RequirePackage{microtype}
% Disallow breaking after the dash \=/ (prints as -)
\RequirePackage[shortcuts]{extdash}
% More options for lists
\RequirePackage{enumitem}

% Hyperlinks
\usepackage[
  english,
  unicode,
  pdfusetitle,
  pdfcreator={},
  pdfproducer={},
]{hyperref}

% PDF Bookmarks
\usepackage{bookmark}

% QED design
\renewcommand{\qedsymbol}{$\blacklozenge$}
