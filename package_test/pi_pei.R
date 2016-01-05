
# 查找一个list中各个数组的元素在一个固定数组中的位置, 并把位置信息记录到一个矩阵里

for_paixu <- function(){
  rec <- list(c("不好","坏的","质量","问题"), c("不好","坏的"))
  a<-c("问题","坏的","质量")
  m<-matrix(0,2,3)
  
  for ( i in 1:length(rec) ){
    for( j in 1:length(rec[[i]]) ){
      # print(rec[[i]][j])  # ex
      index <- which(a == rec[[i]][j])
      # print(paste(i,' --- ',index))
      # print(length(index))
      # 用which匹配元素在数组中的位置, 如果数组中没有的话, 会返回 integer(0), 否则是位置索引
      # 但是integer(0) 不能直接 和 数字 0 比较, 否则报错: 参数长度为零
      # 应该用length() 函数处理之后再和 0 比
      if(length(index) > 0){
        m[i,index] <- 1
      }  
    }
  }
  # print(m)
}

# 
bat_paixu <- function(){
  rec <- list(c("不好","坏的","质量","问题","质量"), c("不好","坏的"))
  a<-c("问题","坏的","质量")
  m<-matrix(0,2,3)
  
  for ( i in 1:length(rec) ){
    m[i,] <- match(a, rec[[i]])
  }
  m[!is.na(m)] <- 1
  m[is.na(m)] <- 0
  # print(m)
}


add_1 <- function(x) {
  return(x+1)
}

add_2 <- function(x) {
  for (i in 1:length(x)) {
    x[i] = x[i] + 1;
  }
  return(x)
}












