.PHONY: clean old-pdflatex

Jonathan_Fokkan_Resume.pdf: Jonathan_Fokkan_Resume.tex
	docker run --rm -it -v $(pwd):/home danteev/texlive latexmk -pdf -lualatex Jonathan_Fokkan_Resume.tex

clean:
	rm *.pdf *.log *.aux *.out *.fls *.fdb_latexmk

lualatex-local: Jonathan_Fokkan_Resume.tex
	lualatex Jonathan_Fokkan_Resume.tex

old-pdflatex: Jonathan_Fokkan_Resume.tex
	pdflatex Jonathan_Fokkan_Resume.tex
