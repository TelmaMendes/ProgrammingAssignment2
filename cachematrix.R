## Caching the inverse of a matrix.


## Set the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  t <- NULL
  set <- function (z) {
    x <<- z
    t <<- NULL
  }
  get <- function ()x
  setinverse <- function(inverse) t <<- inverse
  getinverse <- function() t
  list( set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Calculate the inverse of the matrix

cacheSolve <- function(x, ...) {
  t <- x$getinverse()
  if(!is.null(t)){
    message ("getting cached data")
    return (t)
  }
  
  data <-x$get ()
  t <- solve (data,...)
  x$setinverse (t)
  
  ## Return a matrix that is the inverse of 'x'
  t
        
}


