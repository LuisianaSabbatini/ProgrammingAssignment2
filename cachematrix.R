## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
