## With these functions you can make matrices with cached 
## invert. So you can solve a matrix only once, and when you next
## ask for the invert, it will not compute it, rather it will get
## it from the cache.

## The function with which you can make a Matrix object
## what can cache its own invert.

makeCacheMatrix <- function(myMatrix = matrix()) {
	cachedVal <- NULL
	set <- function(newMatrix=matrix()) {
		myMatrix  <<- newMatrix
		cachedVal <<- NULL
	}
	get <- function() {
		myMatrix
	}
	setInvert <- function(invert) {
		cachedVal <<- invert
	}
	getInvert <- function() {
		cachedVal
	}
	list(set = set, get = get,
		setInvert = setInvert,
		getInvert = getInvert)
}


## Generates the invert of the matrix, and store it in the cache,
## or it gives back the value from cache if it's already generated.

cacheSolve <- function(myMatrix, ...) {
        cachedVal <- myMatrix$getInvert()
        if(!is.null(cachedVal)) {
                message("getting cached data")
                return(cachedVal)
        }
        data <- myMatrix$get()
        cachedVal  <- solve(data, ...)
        myMatrix$setInvert(cachedVal)
        cachedVal
}
