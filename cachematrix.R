## Put comments here that give an overall description of what your
## functions do

## This Is A Cache Matrix With 4 Functions Information About This Matrix Are Stored In x and m variables

makeCacheMatrix <- function(x = matrix()) {

		m <- NULL
	## Set Matrix Value To X Variable
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        ## Return The X Variable
        get <- function() x
        ## Set Inverse Matrix To m variable
        setinverse <- function(inverse) m <<- inverse
        ## Return Inverse Matrix in m variable
        getinverse <- function() m
        ## List Of 4 Functions
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function solves the inverse of matrix and store the results in CacheMatrix

cacheSolve <- function(x) {
        ## Get The Inverse Matrix Of Given CacheMatrix
	m <- x$getinverse()
	## If Inverse Was Calculated Return The Inverse
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ## Get The Matrix Value
        data <- x$get()
        
        ## Find The Inverse
	m <- solve(data)	

	## Store The Inverse
        x$setinverse(m)
        
        # Return The Inverse
        m
}
