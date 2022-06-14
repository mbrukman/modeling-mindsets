#' Add CC-BY on images
#'
#' @param p A ggplot
#' @return ggplot with annotation
add_cc = function(p){
  #ycc = min(layer_scales(p)$y$get_limits())
  #xcc = max(layer_scales(p)$x$get_limits())
  #p$theme$plot.margin[3] =  p$theme$plot.margin[3] + unit(1, "lines")
  if (is.html) { 
    cap = "Modeling Mindsets CC-BY 4.0 Christoph Molnar"
    p = p + labs(caption = cap, hjust = 1, size = 1)
  }
  p
}


