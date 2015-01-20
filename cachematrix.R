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
	setInvert <- function(invert) cachedVal <<- invert
	getInvert <- function() cachedVal
	list(set = set, get = get,
		setInvert = setInvert ,
		getInvert = getInvert )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        cachedVal <- x$getInvert()
        if(!is.null(cachedVal)) {
                message("getting cached data")
                return(cachedVal)
        }
        data <- x$get()
        cachedVal  <- solve(data, ...)
        x$setInvert(cachedVal)
        cachedVal
}
