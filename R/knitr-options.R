library("knitr")

output <- opts_knit$get("rmarkdown.pandoc.to")
is.html = !is.null(output) && output == "html"
