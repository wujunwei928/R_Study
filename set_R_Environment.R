
# 批量安装R包, 在set_R_Environment.sh 中 安装好之后在需要的软件之后, 调用此文件安装

# 指定下载R package的镜像, 选一个速度快的
downloadRepos <- 'https://mirrors.tuna.tsinghua.edu.cn/CRAN/'

# 安装R包
install.packages('rJava', repos = downloadRepos) 
# 批量安装R包
install.packages(c('sqldf', 'RMySQL', 'RMongo', 'rredis', 'XML', 'xml2', 'rPython'), repos = downloadRepos)
# 安装R语言的七种武器
install.packages(c('RCurl', 'shiny', 'ggplot2', 'plyr', 'tm', 'htmlwidgets', 'quantmod'), repos = downloadRepos)
# 安装数据处理相关包
install.packages(c('dplyr', 'data.table', 'reshape2', 'tidyr', 'readr', 'readxl', 'rvest', 'splitstackshape'), repos = downloadRepos)
# 从github安装R包
install.packages("devtools", repos = downloadRepos)
devtools::install_github('lchiffon/wordcloud2') # 词云包，可以将词语拼成图像，文字等
devtools::install_github("twitter/AnomalyDetection")	#机器学习包
devtools::install_github('yihui/runr')	# 在R中调用BASH
devtools::install_github("hadley/httr")	# 对RCurl进行了友好的封装

