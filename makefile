TEX = pandoc
src = template.tex details.yml
FLAGS = --latex-engine=xelatex
# FLAGS = --pdf-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --verbose --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
