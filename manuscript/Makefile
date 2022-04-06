.PHONY : bookfiles

bookname = modeling-mindsets

all : html pdf epub

html : _book/index.html

pdf : _book/$(bookname).pdf

epub : _book/$(bookname).epub

bookfiles: *.Rmd _bookdown.yml _output.yml

package: ../DESCRIPTION ../R/*.R
	Rscript  -e "devtools::install('../')"

_book/index.html :  bookfiles
	# When build fails interpretable-ml.Rmd is created and not removed. Next build will fail when file exists.
	rm -f $(bookname).Rmd
	Rscript  -e "bookdown::render_book('./', 'bookdown::gitbook')"


%.md : %.Rmd
	R --no-save --args $< < ../scripts/process-rmd-leanpub.R
	R --no-save --args $@ < ../scripts/fix-leanpub.R

_book/$(bookname).pdf : bookfiles
	# When build fails the bookfile Rmd  is created and not removed. Next build will fail when file exists.
	rm -f $(bookname).Rmd
	Rscript  -e "bookdown::render_book('./', 'bookdown::pdf_book')"

_book/$(bookname).epub : bookfile
	# When build fails the bookfile Rmd is created and not removed. Next build will fail when file exists.
	rm -f $(bookname).Rmd
	Rscript  -e "bookdown::render_book('./', 'bookdown::epub_book')"

11-references.Rmd : *.Rmd
	Rscript ../scripts/references.R

sbrl:
	sudo apt install -y libgsl10-dev open-cobol
