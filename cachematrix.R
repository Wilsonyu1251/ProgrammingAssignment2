## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



## The following functions compute and cache the inverse of a matrix
## makeCacheMatrix function creates a special matrix that cache its inverse

makeCacheMatrix <- function(x = matrix() ) {## return a list containing the matrix and the inverse
	inv = NULL
	set = function (y) { ## set up a different environment
		x <<- y
		inv <<- NULL
}
	get = function () x
	setinv = function (inverse) inv <<- inverse
	getinv = function () inv
	list( set=set, get=get, setinv=setinv, getinv=getinv)
}


## cacheSolve function computes the inverse of the matrix returned above
cacheSolve <- function (x, ...) {
	inv = x$getinv ()
	## if already been calculated
	if (!is.null (inv)) {
		message ("getting cached data")
		return (inv)
}

	##otherwise
	mat.data = x$get()
	inv = solve(mat.data, ...)
	x$setinv(inv)
	return(inv)
}