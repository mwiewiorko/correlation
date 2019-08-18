set_utf8 = function(x){
  for (i in 1:ncol(x)){
    if (is.character(x[, i])) Encoding(x[, i]) <- 'UTF-8'
  }
  for (name in colnames(x)){
    Encoding(name) <- 'UTF-8'
  }
  return(x)
}
