.SUFFIXES: .md .pdf

SLIDES_OPTS = --slide-level 2 -t beamer
SLIDES_OPTS += --template vzg-slides.tex

default: slides.pdf

.md.pdf: 
		pandoc -s -S $(SLIDES_OPTS) $(FILTER) -o $@ $<

