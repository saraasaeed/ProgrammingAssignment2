## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y)
  {x<<-y
inv<<-NULL}
  get<-function()x
  setinverse<-function(inverse) inc<<-inverse
  getinverse<-function()inv
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheinverse <- function(x, ...) {
  inv<-x$getinverse()
  if(!is.null(inv)) { 
    messege("getting cached data")
    return(inv)
  }
  matrix_to_invert <-x$get()
  inv<-solve(matrix_to_invert,...)
  x$setinverse(inv)
  inv
  
        ## Return a matrix that is the inverse of 'x'
}

