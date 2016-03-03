
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