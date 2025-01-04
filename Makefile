main.pdf: main.tex
	sudo docker run -i --rm --name latex -v "$$PWD":/usr/src/app -w /usr/src/app texlive/texlive latexmk -lualatex main.tex
