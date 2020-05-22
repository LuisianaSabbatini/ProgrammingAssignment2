## R code to cache the inverse of a matrix rather
## than compute it repeatedly. Allows less computations.

## This function creates a special "matrix"
## object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  xi <- NULL
  set <- function(y) {
    x <<- y
    xi <<- NULL
  }
  get <- function() x
  setinversem <- function(inverse) xi <<- inverse
  getinversem <- function() xi
  list(set = set,
       get = get,
       setinversem = setinversem,
       getinversem = getinversem)
}


## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already
## been calculated, it retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  xi <- x$getinversem()
  if (!is.null(xi)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  xi <- solve(data, ...)
  x$setinversem(xi)
  xi
}
