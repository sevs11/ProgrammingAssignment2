## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invM <- NULL
  set <- function(y) {
    x <<- y
    invM <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) invM <<- inv
  getInverse <- function() invM
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invM <- x$getInverse()
  if(!is.null(invM)) {
    message("getting cached data")
    return(imvM)
  }
  data <- x$get()
  invM <- solve(data, ...)
  x$setInverse(invM)
  invM  
  ## Return a matrix that is the inverse of 'x'
}
