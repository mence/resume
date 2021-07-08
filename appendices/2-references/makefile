TEX = pandoc
# src = template-hard-coded.tex details.yml
src = template.tex details.yml
FLAGS = --latex-engine=xelatex --verbose

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
