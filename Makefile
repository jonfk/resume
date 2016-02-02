.PHONY: clean old-pdflatex

Jonathan_Fokkan_Resume.pdf: Jonathan_Fokkan_Resume.tex
	lualatex Jonathan_Fokkan_Resume.tex

clean:
	rm Jonathan_Fokkan_Resume.pdf Jonathan_Fokkan_Resume.log Jonathan_Fokkan_Resume.aux Jonathan_Fokkan_Resume.out

old-pdflatex: Jonathan_Fokkan_Resume.tex
	pdflatex Jonathan_Fokkan_Resume.tex
