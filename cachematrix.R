## Put comments here that give an overall description of what your
## functions do:

## The first function makes a local object which holds a variable (preferably a matrix) as well a place holder for the
## computed inverse of the matrix being stored.

## The second function tries to return the stored inverse in the matrix object being passed to it but will calculate
## the inverse from scratch and store it if it is not present - then print the inverse


## Write a short comment describing this function
## No changes to the cache function besides updating the function names to share they deal with inverses
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) m <<- inv
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
##Simply replaced the logic of computing a mean with the logic of inversing a matrix on line 30.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
