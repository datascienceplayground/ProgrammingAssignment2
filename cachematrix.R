## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      # create assignment function
      # clear old function. Inverse.
      m <- NULL
      set <- function(y) {
              x <<- y
              m <<- NULL
      }
      get <- function() x
      # set inverse
      setinverse <- function(inverse) m <<- inverse
      # get inverse
      getinverse <- function() m
      list(set = set,
           get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'. Return when empty
        m <- x$getinverse()
        if (!is.null(m)) {
                return(m)
        }
        # Get matrix value, inverse, cache and return
        m <- solve(x$get(), ...)
        x$setinverse(m)
        m
}
