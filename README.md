#Create a square matrix as 'solve' function only solves square matrix:

a<-makeCacheMatrix(matrix(c(4,8,12,15),2,2))

> summary(a)
             Length Class  Mode    
setMatrix    1      -none- function
getMatrix    1      -none- function
cacheInverse 1      -none- function
getInverse   1      -none- function

#get the square matrix to see if it's stored
> a$getMatrix()
     [,1] [,2]
[1,]    4   12
[2,]    8   15

# returns the inverse matrix with computation as it's run for the first time
> cacheSolve(a)
           [,1]       [,2]
[1,] -0.4166667  0.3333333
[2,]  0.2222222 -0.1111111

# returns from the cached value as it's already calculated and cashed. The message is also displayed.
> cacheSolve(a)
Returned from cached data
           [,1]       [,2]
[1,] -0.4166667  0.3333333
[2,]  0.2222222 -0.1111111