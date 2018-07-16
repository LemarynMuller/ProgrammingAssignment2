## makeCacheMatrix will create a matrix where its inverse can be cached

## cacheSolve returns the inverse of the matrix


## Function receives a matrix as an argument and sets its inverse to null

## It then defines functions that do the following:
## It sets the values of the matrix
## It gets the values of the matrix
## It sets the inverse of the matrix
## It gets the inverse of the matrix

## It then stores these functions in a list

makeCacheMatrix <- function(x = matrix()) {
  Sol <- NULL
  set <- function(y) {
    x <<- y
    Sol <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) Sol <<- solve
  getsolve <- function() Sol
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## This function will return the inverse if it has been cached
## Otherwise it will calculate the inverse, store it and return it 

cacheSolve <- function(x, ...) { 
    Sol <- x$getsolve()
    if(!is.null(Sol)) {
       message("getting cached data")
       return(Sol)
    }
    data <- x$get()
    Sol <- solve(data, ...)
    x$setsolve(Sol)
    Sol
    ## Return a matrix that is the inverse of 'x'
}
