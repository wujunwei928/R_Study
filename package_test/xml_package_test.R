
# R语言版本的知乎爬虫
library(RCurl)
library(xml2)

# userinfo <- httpGET('https://www.zhihu.com/people/wujunwei928')
userHtml <- read_html('https://www.zhihu.com/people/wujunwei928')
userInfo <- xml_find_one(userHtml, "//div[@class='zm-profile-header-main']")

# https://www.zhihu.com/people/PeterDeng2/followees
# https://www.zhihu.com/people/PeterDeng2/followers
# https://www.zhihu.com/people/PeterDeng2/asks
# https://www.zhihu.com/people/PeterDeng2/answers


url<-c()
for (i in 1:1) {
  url<-c(url,paste("http://category.dangdang.com/cid4008120-pg",i,".html",sep=""))
}

library(XML)
read_url<-function(url){
  url_vector<-c()
  i<-1
  for(i_url in url){
    i_url.html<-htmlParse(i_url)
    url.xpath<-getNodeSet(i_url.html,"//li[@name='lb']/div/a")
    url.i<-c()
    for (j in 1:length(url.xpath)) {
      url.i<-c(url.i,xmlGetAttr(url.xpath[[j]],'href'))
    }
    url_vector<-c(url_vector,url.i)
    i<-i+1
  }
  url_vector
}

urls<-read_url(url)


read_xml <- function(url){
  id_vector<-c()
  price_vector<-c()
  i<-1
  for(i_url in url){
    i_url.html<-htmlParse(i_url)
    
    id.xpath<-getNodeSet(i_url.html,"//span[@id='stock_span']")
    id<-xmlGetAttr(id.xpath[[1]],'prd_id')
    
    price.xpath<-getNodeSet(i_url.html,"//span[@id='promo_price'] | //span[@id='salePriceTag']")
    price<-xmlValue(price.xpath[[1]])
    print(price)
    # price<-substr(price,2,nchar(price))
    print(price)
    
    id_vector[i] <- id
    price_vector[i]<-price
    # price_vector[i]<-as.numeric(price)
    print(i)
    i<-i+1
    
  }
  data.frame(id=id_vector,price=price_vector)
}
data2<-read_xml(urls)




