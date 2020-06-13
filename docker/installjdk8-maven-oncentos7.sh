#!/usr/bin/env bash

## wget http://mirror.bit.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
## 下载好apache-maven-3.6.3和jdk-8u251-linux-x64.tar.gz上传到服务器

## install JDK

tar -xzvf jdk-8u251-linux-x64.tar.gz

mkdir /usr/lib/jdk

mv jdk1.8.0_251 /usr/lib/jdk

echo export JAVA_HOME=/usr/lib/jdk/jdk1.8.0_251 >> ~/.zshrc

echo export JRE_HOME=/usr/lib/jdk/jdk1.8.0_251/jre >> ~/.zshrc






## install maven

tar -xzvf apache-maven-3.6.3-bin.tar.gz
# -x 解压
# -z | --gzip | --ungzip 用gzip对存档压缩或解压
# -v | --verbose 详细显示处理的文件
#-f | --file [HOSTNAME:]F 指定存档或设备

echo export M2_HOME=`pwd`/apache-maven-3.6.3 >> ~/.zshrc

echo export PATH='${M2_HOME}'/bin:'${JAVA_HOME}'/bin:'$PATH' >> ~/.zshrc

echo export CLASSPATH=.:'${JAVA_HOME}'/lib:'${JRE_HOME}'/lib >> ~/.zshrc



