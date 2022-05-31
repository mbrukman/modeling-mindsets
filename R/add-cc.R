#' Add CC-BY on images
#'
#' @param p A ggplot
#' @return ggplot with annotation
add_cc = function(p){
  #ycc = min(layer_scales(p)$y$get_limits())
  #xcc = max(layer_scales(p)$x$get_limits())
  #p$theme$plot.margin[3] =  p$theme$plot.margin[3] + unit(1, "lines")
  p + labs(caption = "CC-BY Christoph Molnar", hjust = 1, size = 1)
}


