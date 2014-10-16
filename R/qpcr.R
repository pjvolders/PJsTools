normalize_ddcq = function(x, ref_genes, control_sample, cp_col = "Cp", gene_col = "Gene", sample_col = "Sample"){
  
}

calculate_dcq = function(x, ref_genes, cp_col = "Cp", gene_col = "Gene") {
  
}

# calculate geometric mean
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}