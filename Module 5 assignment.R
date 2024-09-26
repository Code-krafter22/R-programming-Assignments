A<-matrix(1:100, nrow=10)
A
det(A) # find determinant of A
TP <-t (A) #find transverse of A
TP
solve(A) # inverse of matrix

B <- matrix(1:1000, nrow=10)
B
det(B) # find determinant of A
Solve(B) # inverse of matrix

c <- matrix(1:9, nrow = 3)
d<-matrix(10:18, nrow = 3)
c+d # addition of matrix
c-d # subtraction of matrix
c%*%d # multiplication of matrix

S <- matrix(2:5,nrow=2)
S
det(S) # find determinant of A
solve(S) # inverse of matrix
