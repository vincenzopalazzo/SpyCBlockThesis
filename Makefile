FILE=tesi

build: bib

bib:
	pdflatex -interaction=nonstopmode "$(FILE).tex";
	bibtex "$(FILE).aux";
	pdflatex -interaction=nonstopmode "$(FILE).tex";
	pdflatex -interaction=nonstopmode "$(FILE).tex"

view: build
	open $(FILE).pdf

clean:
	rm -f *.log *.pdf *.out *.lof *.lol *.toc *.gz *.blg *.fdb_latexmk *.fls *.aux *.auxlock
