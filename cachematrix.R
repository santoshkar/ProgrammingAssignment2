## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mx <- null;
  
  set <- function(arg){
    x <<- arg
    mx <<- null
  }
  
  get <- function() x
  
  setInverse <- function(solve) mx <<- solve
  getInverse <- function() mx
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      mx <- x$getInverse()
      if(!is.null(mx)){
        message("Getting cached data")
        return (mx);
      }
      
      data <- x$get()
      
      mx <- solve(data, ...)
      x$setInverse(mx)
      mx
}
