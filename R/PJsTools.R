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

# read in bed files
read.bed = function(file, skip = 0) {
  tmp = read.table(file, sep = "\t", skip = skip, stringsAsFactors = F)
  bed_colnames=c('chr', 'start', 'end', 'id', 'bed_score', 'strand', 'thickstart', 'thickend', 'color', 'nrblocks', 'blockstarts', 'blocksizes')
  colnames(tmp) = bed_colnames[1:dim(tmp)[2]]
  return(tmp)
}

# calculate geometric mean
geomean = function(x, na.rm = FALSE){exp(mean(log(x),na.rm=na.rm))}

# read data from clipboard
read.clip = function(...){
  read.delim(pipe("pbpaste"), ...)
}

# apply with a fancy progress bar
# based on: https://ryouready.wordpress.com/2010/01/11/progress-bars-in-r-part-ii-a-wrapper-for-apply-functions/
# progress bar from https://rdrr.io/cran/dplyr/man/progress_estimated.html
# STATUS: WORKING, but only tested once or twice,
# tested with most ?apply examples
# ISSUES/TODO: MARGIN argument cannot take a
# vector like 1:2 that is more than one numeric
apply_pb = function(X, MARGIN, FUN, ...)
{
  env = environment()
  pb_Total = sum(dim(X)[MARGIN])
  pb = dplyr::progress_estimated(pb_Total, min_time = 3)
  
  wrapper = function(...)
  {
    pb = get("pb", envir= env)
    pb$tick()$print()
    FUN(...)
  }
  res = apply(X, MARGIN, wrapper, ...)
  res
}

fdr_cutoff = function(predictions, labels, fdr_cutoff=0.01) {
  fdr_dat = data.frame(
    cutoff = predictions[order(predictions, decreasing = T)],
    fp = cumsum(!labels[order(predictions, decreasing = T)]),
    p = cumsum(labels[order(predictions, decreasing = T)])
  )
  fdr_dat$fdr = fdr_dat$fp/fdr_dat$p
  
  fdr_cutoff_pos = max(which(fdr_dat$fdr<=fdr_cutoff))
  return(fdr_dat[fdr_cutoff_pos,'cutoff'])
}


## NOT RUN:
# apply_pb(anscombe, 2, sd, na.rm=TRUE)

## large dataset
# df <- data.frame(rnorm(30000), rnorm(30000))
# apply_pb(df, 1, sd)