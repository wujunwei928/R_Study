
# Ｒ语言３Ｄ画图
library(scatterplot3d)
library(plyr)

yuanShuju <- read.csv('scatterplot3d.csv', header = TRUE, stringsAsFactors = FALSE)

# 补全源数据, 形成一个紧密的圆圈
circleTrainSet = NULL
banjing <- sqrt(yuanShuju[1,]$y^2 + yuanShuju[1,]$z^2)  # 计算半径
for (y in seq(0, banjing, by=0.005)) {
	z <- sqrt(banjing^2 - y^2)
	tmpDF <- data.frame(
		x = c(1.5, 1.5, 1.5, 1.5),
		y = c(y, y, -y, -y),
		z = c(z, -z, z, -z)
	)
	circleTrainSet <- rbind(circleTrainSet, tmpDF)
}

# 生成多一些的X, 形成一个圆柱面
# randNumX <- unique( runif(1000, min=0, max=10) )
randNumX <- seq(1.5, 10.5, by=0.1)
zongshuju = NULL
for (i in randNumX) {
  circleTrainSet$x <- i
  zongshuju <- rbind(zongshuju, circleTrainSet)
}

zongshuju <- rbind(zongshuju, yuanShuju)

scatterplot3d(zongshuju[1:3],color = 'red')

# 源数据画图
scatterplot3d(yuanShuju,highlight.3d=TRUE, col.axis="blue",col.grid="lightblue", main="内孔", pch=20)

# 训练集画图
scatterplot3d(circleTrainSet,highlight.3d=TRUE, col.axis="blue",col.grid="lightblue", main="内孔", pch=20)

# 理想数据画图
scatterplot3d(zongshuju,highlight.3d=TRUE, col.axis="blue",col.grid="lightblue", main="内孔", pch=20)


