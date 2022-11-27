## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Just like what example of makeVector present, I know the basic idea 
#will be four steps
makeCacheMatrix <- function(x = matrix()) { # input a matrix of x
        m <- NULL   # not really understand why we need to set m to NULL
        set <- function(y){  # this step is confusing too, but they are the same as example
                x <<- y  
                m <<- NULL
        }
        get <- function() x # no mension of this struction in class but I test it out which function() x is just x
        setinverse <- function(inverse) m <<- inverse #confusing which I just change the name into inverse and I believe this is not how it work
        getinverse <- function() m # it is just m
        list(set = set, get = get, # show environment of makeCacheMatrix
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

#Again, the structure provide by example and most of them I don't know why we need it
cacheSolve <- function(x, ...) { #input makeCacheMartix(x)
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse() #Again, why we do this
        if(!is.null(m)) { #same as example, testing whether its inversed by last function or not
                message("getting cached data")
                return(m)
        }
        data <- x$get() #just x
        m <- solve(data, ...) # the key! solve for matrix!
        x$setinverse(m) #don't know why it exist
        m #return the inversed matrix
}
