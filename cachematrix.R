## With these functions you can make matrices with cached 
## invert. So you can solve a matrix only once, and when you next
## ask for the invert, it will not compute it, rather it will get
## it from the cache.

## The function with which you can make a Vector object
## what can cache its invert.

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


## Generates the invert of the matrix, and store it in the cache,
## or it gives back the value from cache if it is generated.

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
