# Sample Rprofile.site file

# Things you might want to change
# options(papersize="a4")
# options(editor="notepad")
# options(pager="internal")

# R interactive prompt
# options(prompt="> ")
# options(continue="+ ")

# to prefer Compiled HTML
# help options(chmhelp=TRUE)
# to prefer HTML help
# options(htmlhelp=TRUE)

# options(repos = c(CRAN = "http://mirror.bjtu.edu.cn/cran/",
#                   CRANextra = "http://www.stats.ox.ac.uk/pub/RWin"))
#                   

# 设置用户自己的R包安装目录
.libPaths("~/R")

# 设置默认的下载镜像源, 每次都选镜像太烦了
local({r <- getOption("repos")
      r["CRAN"] <- "https://mirrors.tuna.tsinghua.edu.cn/CRAN/"
      r["CRANextra"] <- "http://www.stats.ox.ac.uk/pub/RWin"
      options(repos=r)})

# General options
options(tab.width = 2)
options(width = 130)
options(graphics.record=TRUE)

# 启动R时需要做的事
.First <- function(){
#    library(gbm)
#    library(R2HTML)
    cat("\nWelcome at", format(Sys.time()), "\n")
}

# 关闭R时需要做的事
.Last <- function(){
    cat("\nGoodbye at ", format(Sys.time()), "\n")
}

