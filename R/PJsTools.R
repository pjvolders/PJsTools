# calculate the mean of several rows based on a grouping variable 
rowmean = function(x, group, reorder = TRUE, na.rm = FALSE) {
  x.sum = rowsum(x, group=group,reorder=reorder, na.rm=na.rm)
  x.n   = rowsum(1L-is.na(x), group=group, reorder=reorder, na.rm=na.rm)
  return(x.sum/x.n)
}

# custom ggplot2 theme
library(ggplot2)
pjstheme = theme(
  axis.text.x = element_text(colour='gray50', angle = 90, hjust = 1, vjust = 0.5), 
  axis.text.y = element_text(colour='gray50'), 
  panel.background = element_blank(), 
  panel.grid.minor = element_blank(), 
  panel.grid.major = element_blank(), 
  panel.border = element_rect(colour='gray50', fill = NA), 
  strip.background = element_blank()
)