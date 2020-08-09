## Put comments here that give an overall description of what your

## functions do



## Write a short comment describing this function
## The function set the value of the matrix
## get the value of matrix
## set the value of inverse
## get the value of inverse

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setMatrix <- function(inverse) inve <<- inverse
  getMatrix <- function() inve
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
}


## Write a short comment describing this function
# computes the inverse of the matrix returned by makeCacheMatrix above


cacheSolve <- function(x, ...) {
  inve <- x$getMatrix()
  if(!is.null(inve)) {
    message("getting cached data")
    return(inve)
  }
  data <- x$get()
  inve <- solve(data, ...)
  x$setMatrix(inve)
  inve
  ## Return a matrix that is the inverse of 'x'
  
}
