## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	mat <- x
	
	get <- function() mat
	set <- function(x) mat <<- x
	setinverse <- function(i) inverse <<- i
	getinverse <- function() inverse
	
	list(get = get, set = set, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
