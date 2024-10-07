#Assignment 6

# 1 For matrix A and B

A<-matrix(c(2,0,1,3),ncol=2)
print(A)
B<-matrix(c(5,2,4,-1),ncol=2)
print(B)

# a Find A+B
Addition<-A+B
print(Addition)

# b Find A-B
Substraction <-A-B
print(Substraction)

# 2 Create diagonal matrix of size 4
var<-c(4,1,2,3)
m2<-diag(var)
print(m2)

# 3 Create diagonal matrix 5 x 5
m3<- diag(c(rep(3,5))) # matrix with value '3' repeated five times diagonally
print(m3) 

#Making changes in vector

m3[1,2:5]<- rep(1,4) # in matrix m for row 1 and column 2 to 5 repeat value '1' four times
m3[2:5,1]<- rep(2,4) # in matrix m for row 2 to 5 and column 1 repeat value '2' four times
print(m3)

