## Put comments here that give an overall description of what your
## functions do

## Creating a special matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  ## geting the matrix
  get <- function() x
  #set the inverse of the matrix
  setInverse <- function(Inverse){
    inv <<- inverse
  }
  #get the inverse of the matrix
  getInverse <- function(){
    inv
  }
  #return list of functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##Using makeCacheMatrix, it computes and returns the inverse of a matrix

cacheSolve <- function(x, ...) {
  #getting the cache inverse
  inv <- x$getInverse()
  ##if the inverse is cached, return it
  if(!isnull(inv)){
    message("getting cached data")
    return(inv)
  }
  #get the matrix
  mat <- x$get
  #calaculate the inverse
  inv <- solven(mat, ...)
  #setting the inverse
  x$setInverse(inv)
  #return the inverse
  inv
}
  ## Return a matrix that is the inverse of 'x'
