## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inverse <- x$getinverse()
	if(!is.null(inverse)){
		message("Getting cached inverse")
		return (inverse)
	}
	
	inverse <- solve(x$get())
	x$setinverse(inverse)
	
	inverse
	
}
