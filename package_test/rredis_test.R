
library(rredis)


conn <- redisConnect('localhost',6379)
redisGet('name')
redisSet('name', 'wujunwei')
redisGet('name')