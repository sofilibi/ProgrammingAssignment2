## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
 
  invv <- NULL
  
  
  set <- function(y){
    matrix <<- y
    invv <<- NULL
  }
  
  
  get <- function(){
   
    matrix
  }
  
 
  setInverse <- function(inverse) {
   
    invv <<- inverse
  }
  

  getInverse <- function() {
    
    invv
  }
  
   list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 
  invv <- x$getInverse()
  
 
  if(!is.null(invv)) {
    message("recuperando los datos en cache")
    return(invv)
  }
  
  
  midata <- x$get()
  

  m <- solve(midata) %*% midata
  
  x$setInverse(m)
  

  m
}
