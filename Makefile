all:
	:| pdflatex -output-directory=build/ -synctex=1 -halt-on-error --shell-escape Presentation16to9.tex | grep '^!.*' -A200 --color=always 
