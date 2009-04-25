LATEX=latex
PDFLATEX=pdflatex
DATE=$(shell date +%Y-%m-%d)

coursework = coursework
PARTS = part1.tex part2.tex part3.tex part4.tex \
	part5.tex part6.tex title.tex

$(coursework).pdf:$(coursework).tex $(PARTS)
	$(PDFLATEX) $(coursework).tex

$(coursework).ps:$(coursework).tex
	$(LATEX) $(coursework).tex

pdf: $(coursework).pdf

ps: $(coursework).ps

defalult: pdf

