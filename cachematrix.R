## This is the answer for Programming Assignment 2 for the R Programming course

## This function creates a matrix object that can cache its inverse
## This is based on the function makeVector provided by the course
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  ## setting the value of the matrix
  set <- function(x) {
    matrix_x <<- x;
    inverse <<- NULL;
  }
  ## getting the value of the matrix
  get <- function() return(matrix_x);
  ## setting the inverse value
  setinverse <-function(inverse2) inverse <<- inverse2;
  ## getting the inverse value
  getinverse <-function() return(inverse);
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}

## This function computes the inverse of the special matrix returned by
## the function above, makeCacheMatrix.
## If the inverse has already been calculated and the matrix has not changed
## then cacheSolve should retrieve the inverse from the cache.
## Otherwise, it will calculate the inverse and store it into the cache

## The following code is based on cachemean provided by the course.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- matrix_x$getinverse()
  ## if the inverse is not null, then we have the matrix in cache. Return it
  if(!is.null(inverse)) {
    message("Getting cached data")
    return(inverse)
  }
  ## The matrix was not in the cache. Now calculating the inverse
  # get the inverse
  value <- matrix_x$get()
  # solve it, as specified by the course
  inverse <- solve(data, ...)
  # set the inverse to the cache
  matrix_x$setinverse(inverse)
  # return the inverse
  return(inverse)
}
