
# 批量安装R包, 在set_R_Environment.sh 中 安装好之后在需要的软件之后, 调用此文件安装

# 安装R包
install.packages('rJava') 
# 批量安装R包
install.packages(c('RMongo', 'rredis', 'XML', 'xml2', 'rPython'))
# 安装R语言的七种武器
install.packages(c('RCurl', 'shiny', 'ggplot2', 'plyr', 'tm', 'htmlwidgets', 'quantmod'))
# 从github安装R包
install.packages("devtools")
devtools::install_github("twitter/AnomalyDetection")	#机器学习包
devtools::install_github('yihui/runr')	# 在R中调用BASH
devtools::install_github("hadley/httr")	# 对RCurl进行了友好的封装