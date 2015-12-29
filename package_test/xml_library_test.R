
myWriteToFile <- function(msg, fileName){
  write.table(msg, fileName, append = TRUE, quote = FALSE, row.names = FALSE,col.names = FALSE , eol = "\n")
}


# use xml2 library to query web url

library(xml2)

# get bookDetailUrl list
for (page in 1:3) {
  # read html from url
  pageUrl <- paste('http://www.allitebooks.com/page/', page, '/', sep = '')
  bookListHtml <- read_html(pageUrl)
  
  # use xpath to find a tag contains bookDetailUrl
  bookList <- xml_find_all(bookListHtml, "//a[@rel='bookmark']")
  
  # write to file
  write.table(xml_attr(bookList,'href'), 'bookList.txt', append = TRUE, quote = FALSE, row.names = FALSE,col.names = FALSE , eol = "\n")
}


# get bookDownloadUrl list
for (bookDetailUrl in read.table('bookList.txt')$V1) {
  bookInfoHtml <- read_html(bookDetailUrl)
  bookDownloadUrl <- xml_attr( xml_find_one(bookInfoHtml,"//span[@class='download-links']/a"), 'href')
  myWriteToFile(bookDownloadUrl, 'bookDownList.txt')
}





