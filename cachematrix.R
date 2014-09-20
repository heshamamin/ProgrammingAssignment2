## These functions are a cached inverse implemenation

## A function to create an list that holds a cached matrix with its inverse
makeCacheMatrix <- function(x = matrix()) {
	
	inverse <- NULL
	
	get <- function() x
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	setinverse <- function(i) inverse <<- i
	getinverse <- function() inverse
	
	list(get = get, set = set, setinverse = setinverse, getinverse = getinverse)
}


## Returns a cached inverse from the cache matrix if exists
## otherwise it creates it and caches it in the cache matrix
cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inverse <- x$getinverse()
	if(!is.null(inverse)){
		message("Getting cached inverse")
		return (inverse)
	}
	
	inverse <- solve(x$get(),...)
	x$setinverse(inverse)
	
	inverse
	
}
