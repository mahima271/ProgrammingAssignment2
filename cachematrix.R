

## Write a short comment describing this function
## Write a short comment describing this function	# Caching Function for a Matrix, this function returns a
# list of getters and setters for the Matrix as well as
# placeholders for the Matrix Inverse calculation.

makeCacheMatrix <- function(x = matrix()) {
        makeCacheMatrix <- function(x = matrix()) {

   m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrixinverse <- function(inverse) m <<- inverse
  getmatrixinverse <- function() m
  list(set = set, get = get, 
       setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)
                }

}



# Computes the Matrix inverse of an invertible matrix. 
# First checks to see if a previously computed Matrix
# Inverse already exists in Cache,
# if it does, fetch from Cache; else the Matrix
# Inverse is computed and stored in Cache. 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getmatrixinverse()
  if (!is.null(m)) {
    message("getting cached matrix inverse")
    return (m)
  }
  matrix <- x$get()
  m <- solve(matrix) 
  x$setmatrixinverse(m)
  m
}
}
