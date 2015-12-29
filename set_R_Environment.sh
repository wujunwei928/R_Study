
# use root super user to install, or can't append deb source in /etc/apt/sources.list
su root

# install need software
apt-get install mysql-server openjdk-7-jdk  vim  redis-server openssh-server subversion git mongodb-clients mongodb-server terminator chromium-browser

ln -s  /usr/lib/jvm/java-7-openjdk-amd64/  /usr/lib/jvm/default-java	# resolve install rJava package
apt-get install libcurl4-openssl-dev	# resolve install RCurl package
apt-get install libxml++2.6-dev	# resolve install XML package
apt-get install libmysqlclient-dev		# resolve install RMySQL package


# install latest R
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo 'deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu/ trusty/' >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
apt-get update
apt-get install r-base-core r-base-dev

# 批量安装R包
R CMD BATCH set_R_Environment.R
