#' Add CC-BY on images
#'
#' @param p A ggplot
#' @param size The size of the label
#' @return ggplot with annotation
add_cc = function(p, size = 10){
  #ycc = min(layer_scales(p)$y$get_limits())
  #xcc = max(layer_scales(p)$x$get_limits())
  #p$theme$plot.margin[3] =  p$theme$plot.margin[3] + unit(1, "lines")
  if (is.html) { 
    cap = "Modeling Mindsets CC-BY 4.0 Christoph Molnar"
   p = p + labs(caption = cap, hjust = 1) +
     theme(plot.caption = element_text(size = size)) 
  }
  p
}


