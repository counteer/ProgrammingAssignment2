## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cachedVal <- NULL
	set <- function(y=numeric()) {
		x <<- y
		cachedVal <<- NULL
	}
	get <- function() x
	setInvert <- function(mean) m <<- mean
	getInvert <- function() cachedVal
	list(set = set, get = get,
		setInvert = setInvert ,
		getInvert = getInvert )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
