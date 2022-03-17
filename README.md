# Template for writing a book with bookdown

Explaining the decisions and behaviour of machine learning models.

![Build Status](https://github.com/<github user name>/<name of repository>/actions/workflows/Book.yaml/badge.svg)

## Summary

Describe your book project here

## Contributing

See [how to contribute](CONTRIBUTING.md)

*In CONTRIBUTING.md you can write how people can contribute to your book, if you want that*



## Rendering the book

*Include this section if you want an instruction for rendering the book -- be it for yourself or for someone else*

Clone the repository.
```{shell}
git clone git@github.com:<github user name>/<repository name>.git
```
Make sure all dependencies for the book are installed. This book has the structure of an R package, so dependencies can be installed easily, only R and the devtools library is required.
Start an R session in the folder of the book repository and type:
```{r}
devtools::install_deps()
```

For rendering the book, start an R session and type:
```{r}
setwd("manuscript")
# first, generate the references
source("../scripts/references.R")
bookdown::render_book('.', 'bookdown::gitbook')
```

After rendering, the HTML files of the  book will be in the "_book" folder. You can either double-click index.html directly or, of course, do it in R:
```{r}
browseURL('_book/index.html')
```


## Notes on Printing with lulu.com

- Export from Leanpub in 7.44" x 9.68" 	18.9cm x 24.6cm
- For cover: 7.565 x 9.925", 19.226 x 25.224cm, see [recommended sizes](https://connect.lulu.com/en/discussion/33279/recommended-book-cover-image-dimensions)
- Font for front cover: Francois One

## Notes on Printing with lulu.com


## Writing

Stuff that both works for leanpub and for bookdown:

- Titles start with #, subtitles with ## and so on.
- Titles can be tagged using {#tag-of-the-title}
- Chapters can be referenced by using `[text of the link](#tag-of-the-title)`
- Figures can be referenced by using `[text of the link](#fig:tag-of-r-chunk-that-produced-figure)`
- Start and end mathematical expressions with `$` (inline) or with `$$` (extra line). Will be automatically changed for leanpub with a regexpr. Conversion script only works if no empty spaces are in the formula.
- Leave empty lines between formulas and text (if formula not inline). Formulas (with $$ ... $$) should be in one line and not over multiple lines (due to parser).
- References have to be writen like this: `[^ref-tag]` and must be at the end of the respective file with `[^ref]: Details of the reference ...`. Make sure the space is included. References are collected in 10-reference.Rmd with the script references.R. Make sure not to use `[^ref-tag]: ` anywhere in the text, only at the bottom for the actual reference.

Printing for  proofreading with extra line spacing:
Build HTML book, go to manuscript/_book/libs/gitbook*/css/style.css, change line-height:1.7 to line-height:2.5, open local html with chrome, print to pdf with custom margin.
## Changelog
All notable changes to the book will be documented here.


