
#### aRt

random_art <- function(seed,steps,lines =1){
  mat <- matrix(NA,ncol = lines*2,nrow=steps)
  mat[1,1:(lines*2)] <- sample(1:10,lines*2,T)
  
  set.seed(seed)
  for (i in 2:steps){
    mat[i,1:(lines*2)] <- mat[i-1,1:(lines*2)] +sample(c(-1,0,1),(lines*2),replace = T)
  }
  plot(mat[,1:2],type="l",main="",xlab="",ylab="", xaxt='n',yaxt="n")
}

random_art()
