## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL  
  
  set <- function(y) {  #we assign the matrix given to variable x no considering the working environment
    x <<- y
    m <<- matrix(NA)
  }
  get <- function() #getting the matrix givex - x
  x
  settrans <- function(transposed) #assgn the "transposed" matrix to m variable
  m <<- transposed
  gettrans <- function()   
  m
  list(set = set, get = get,settrans = settrans,gettrans = gettrans)
  }


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
  m <- x$gettrans()    #assign the given matrix to m variable
  if(!is.null(m)) {                #check if the inversed matrix has already been clculated
    message("getting cached data")   #if matrix is null returns this message
    return(m)
  }
  data13 <- x$get()    #assign the given matrix to data13 variable
  m <- solve(data13)  # calculate the inversed matrix
  x$settrans(m)       #cashes the inversed matrix 
  m                   #get the inversed matrix
  
  ## Return a matrix that is the inverse of 'x'
  }

