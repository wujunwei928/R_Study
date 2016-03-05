
selectSort <- function(arr){
  len <- length(arr)
  if(len <= 1) return(arr)
    
  for(i in 1:(len-1) ){
    for (j in (i+1):len ) {
      if (arr[i] < arr[j]) {
        tmp <- arr[i]
        arr[i] <- arr[j]
        arr[j] <- tmp
      }
    }
  }
  return(arr)
}

bubbleSort <- function(arr){
  len <- length(arr)
  if(len <= 1) return(arr)

  for(i in 1:(len-1) ){
    for (j in 1:(len-i) ) {
      if (arr[j] > arr[j+1]) {
        tmp <- arr[j]
        arr[j] <- arr[j+1]
        arr[j+1] <- tmp
      }
    }
  }
  return(arr)
}

quickSort <- function(x) {
    if(length(x) <= 1) return(x)
    pivot <- x[1]
    therest <- x[-1]
    sv1 <- therest[therest < pivot]
    sv2 <- therest[therest >= pivot]
    sv1 <- quickSort(sv1)
    sv2 <- quickSort(sv2)
    return(c(sv1,pivot,sv2))
}

halfSearch <- function(arr, aim){
  lower <- 1
  high  <- length(arr)
  while(lower <= high){
    middle <- as.integer((lower+high)/2)
    if(arr[middle] > aim){
        high <- middle - 1
    } else if(arr[middle] < aim){
        lower <- middle + 1
    } else {
        return(middle)
    }
  }

  return(-1)
}