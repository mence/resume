# Tim Hordern's Resume

My resume, built using LaTeX. Because Microsoft Word resumes are so last year :star:

## Setup

* Install [pandoc](https://pandoc.org/installing.html). Currently tested working against 1.19.2.1.
    * Note: installing via Homebrew returns the latest version of Pandoc, which currently breaks some of the compilation scripts.
* Install [BasicTeX](http://www.tug.org/mactex/morepackages.html). You can use [Homebrew](https://brew.sh): `brew cask install basictex`
* Install required TeX packages: `tlmgr install hyphenat marginnote sectsty paralist`
* _Optional for development purposes:_ Install some extra fonts: `tlmgr install collection-fontsrecommended`

## Development:

* Modify `details.yml` to your personal needs.
    * It's filled with my own details right now for obvious reasons. Big gotcha with YAML: make sure to wrap sentences or strings containng potential escape characters in quotes.
* Modify `template.tex` to your personal needs.
    * Styling of the resume and the logic to read `details.yml` (loops, conditionals, etc) is in here.
    * You might want to replace the YAML file logic with the hardcoded output of pandoc if you want to do any really creative spacing or structuring. For the TEX file has no logic to smartly break pages at the right spot, so hardcoding the TEX commands will let you insert a `\newpage` at the right spot. Running `pandoc --verbose` will let you see pandoc's full text output, which you could copy into another TEX file and re-run pandoc across.
* Run `make`. This will run pandoc on the template.tex and spit out a PDF. Given the power of pandoc, we can also output to a range of other filetypes.
* You can lint the `details.yml` file with [yamllint](https://yamllint.readthedocs.io/): `yamllint details.yml`.

## Result:

You can see the resulting PDF that has been generated in [`output.pdf`](https://github.com/mence/resume/blob/master/output.pdf).

## Credit:

Full credit to [mr zool's cv-boilerplate](https://github.com/mrzool/cv-boilerplate). This was the original template, though I've modified both the YAML and the template to a large extent to suit my requirements.
