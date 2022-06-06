# Function to draw a circle in ggplot
# From here: https://stackoverflow.com/questions/6862742/draw-a-circle-with-ggplot2
rectFun <- function(center = c(0,0), height = 1, width = 1, npoints = 100){
  # top left, top right, bottom right, bottom left, top left
  xx = c(center[1] - width/2, center[1] + width/2, center[1] + width/2, center[1] - width/2)
  yy = c(center[2] + height/2, center[2] + height/2, center[2] - height/2, center[2] - height/2) 
  dd = data.frame(x = xx, y = yy)
  rbind(dd, dd[c(1,2),])
}
