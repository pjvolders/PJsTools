# Expression array analysis

# Remove probes that are not expressed
filter_expressed = function(data, relative_cutoff = 1, darkcorner_rowname = 'DarkCorner', nr_of_samples = 1) {
  cutoff_row = data[darkcorner_rowname,] + 1
  
  nr_of_samples_over_cutoff = apply(data[,], 1 , function(x){
    return(sum(x > cutoff_row))
  })
  
  return(data[nr_of_samples_over_cutoff>=nr_of_samples,])
}