## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cachedVal <- NULL
	set <- function(y=numeric()) {
		x <<- y
		cachedVal <<- NULL
	}
	get <- function() {
		x
	}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
