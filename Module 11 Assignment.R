#Module 11 assignment
# Find the bug and fix the code

#The function of tukey_multiple contained an object x which was not identified so created an obect x
x<-matrix(c(1,3,5,7,11,22), nrow=2)

#Similarly the function of tukey_multiple contained another function tukey.outliers which was aslo not defined so created that too
tukey.outlier<- function(vec){
  mean_vec<- mean(vec)
  return(mean_vec)
}

# final tukey_multiple function code contained another error that it was using the logical AND operator && instead of the element-wise AND operator &.
tukey_multiple <- function(x) { outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] & tukey.outlier(x[,j]) # this line contained && instead it was changed to &.
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec)
  }

#After making these changes the code was running smoothly.

