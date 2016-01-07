
# install need software
sudo apt-get install mysql-server openjdk-7-jdk  vim  redis-server openssh-server subversion git mongodb-clients mongodb-server terminator chromium-browser

sudo ln -s  /usr/lib/jvm/java-7-openjdk-amd64/  /usr/lib/jvm/default-java	# resolve install rJava package
sudo apt-get install libcurl4-openssl-dev	# resolve install RCurl package
sudo apt-get install libxml++2.6-dev	# resolve install XML package
sudo apt-get install libmysqlclient-dev		# resolve install RMySQL package
sudo apt-get install libssl-dev 			# resolve install devtools package

# install latest R
sudo apt-add-repository -y "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu/ `lsb_release -cs`/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base-core r-base-dev

# move .Rprofile to user's home
mv config/.Rprofile ~/

# 批量安装R包
# 下面三种都可以执行R文件, 但有细微差别, 
# R CMD BATCH set_R_Environment.R 	# 不直接输出, 会将输出信息存储到一个 .ROut 的新文件里
# R -f set_R_Environment.R            # 直接输出, 但是会打印R版本等不相关的信息
Rscript set_R_Environment.R   		# 仅输出R文件里输出的信息, 打印比较干净

