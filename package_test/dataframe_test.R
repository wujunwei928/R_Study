

# 将 物流, 安装等替换成 非商品, 并根据 商品和非商品的数量, 补充相应的数据
# @参数: dataFrame: 原始数据框
# @参数: typeNameColNo 设置类别所在列的标号 (商品, 非商品在数据框的列号)
processGomeData <- function(dataFrame, typeNameColNo = 1) {
	# 设置常用关键字
	shangpinDesc <- '商品'		# 商品的文字描述
	feishangpinDesc <- '非商品' # 非商品的文字描述

	# 调整数据, 将 不等于 商品的项替换成 非商品
	# dataFrame['newTypeName'] <- ifelse(dataFrame[,typeNameColNo] == shangpinDesc, shangpinDesc, feishangpinDesc)
	dataFrame[,typeNameColNo] <- ifelse(dataFrame[,typeNameColNo] == shangpinDesc, shangpinDesc, feishangpinDesc)

	# 比较商品, 非商品的数量,  补充对应的数据
	shangpinNum <- nrow(dataFrame[dataFrame[,typeNameColNo] == shangpinDesc,])		# 商品条数
	feishangpinNum <- nrow(dataFrame[dataFrame[,typeNameColNo] != shangpinDesc,])		# 非商品条数
	addMsgType <- ifelse(shangpinNum > feishangpinNum, feishangpinDesc, shangpinDesc)	# 需要补充数据的类型: 商品, 非商品
	# 从待选取的列表中随机一组数据框行号
	selectSeed <- floor( runif(abs(shangpinNum - feishangpinNum), min = 1, max = nrow(dataFrame[dataFrame[,typeNameColNo] == addMsgType,]) ) )
	dataFrame <- rbind(
		dataFrame, 
		# 如果这里不用as.list, 行号不连贯
		as.list( dataFrame[dataFrame[,typeNameColNo] == addMsgType,][selectSeed,] )
	)

	dataFrame
}

# 设置测试数据, 商品比较多
gomedf_one <- data.frame( a = c('商品','商品', '商品', '物流', '安装'), b = c(2, 6, 7, 8, 9) )
gomedf_one_new <- processGomeData(gomedf_one)

# 设置测试数据, 非商品比较多
gomedf_two <- data.frame( c = c('安装', '物流', '商品','物流', '安装','商品','物流', '安装', '商品', '物流', '安装'), d = c(2, 6, 7, 8, 9, 6, 8, 1, 2, 3, 6) )
gomedf_two_new <- processGomeData(gomedf_two)


























