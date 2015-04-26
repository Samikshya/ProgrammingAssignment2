#function to create and store matrix.

makeCacheMatrix <- function(x = numeric()) {
        
        # holds the cached value or NULL if nothing is cached
        cache <- NULL
        
        # store a new matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # since new value is assigned, clear the cache
                cache <<- NULL
        }
        
        # returns the stored matrix
        getMatrix <- function() {
                x
        }
        
        # cache the given argument 
        cacheInverse <- function(solve) {
                cache <<- solve
        }
        
        # get the cached value
        getInverse <- function() {
                cache
        }
        
        # return each element
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}






# function to calculate inverse  matrix created with makeCacheMatrix

cacheSolve <- function(y, ...) {
        
        # get the cached value
        inverse <- y$getInverse()
        
        # if cached value exists return the cached
        if(!is.null(inverse)) {
                message("Returned from cached data")
                return(inverse)
        }
        
        # if there is no cached value, caclulate the inverse and cache
        data <- y$getMatrix()
        
        inverse <- solve(data)
        
        y$cacheInverse(inverse)
        
        # return inverse
        inverse
}