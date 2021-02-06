## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## initialize value of inverse matrix 
    inversa <- NULL
    
    # set value of matrix from user input y
    set <- function(y) {
        # sets to global x value of matrix input y 
        x <<- y
        # clears inversematrix value if it exists
        inversa <<- NULL
    }
    
    # get value of matrix if it has been set
    get <- function() {x}
    # set value of the inverse of matrix
    setinversa <- function(inversacalculada) {inversa <<-inversacalculada}
    # get value of the inversematrix
    getinversa <- function() {inversa}
    list(set = set, get = get,
         setinversa = setinversa,
         getinversa = getinversa)

}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    #get value of inverse
    inversa <- x$setinversa()
    #check to see if inverse is already computed
    if(!is.null(inversa)) {
        #if inverse is cached, get the cached value and return
        message("getting cached data")
        return(reversa)
    }
}
d