
# install need software
sudo apt-get install mysql-server openjdk-7-jdk  vim  redis-server openssh-server subversion git mongodb-clients mongodb-server terminator chromium-browser

sudo ln -s  /usr/lib/jvm/java-7-openjdk-amd64/  /usr/lib/jvm/default-java	# resolve install rJava package
sudo apt-get install libcurl4-openssl-dev	# resolve install RCurl package
sudo apt-get install libxml++2.6-dev	# resolve install XML package
sudo apt-get install libmysqlclient-dev		# resolve install RMySQL package


# install latest R
sudo apt-add-repository -y "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu/ `lsb_release -cs`/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base-core r-base-dev

# 批量安装R包
R CMD BATCH set_R_Environment.R
