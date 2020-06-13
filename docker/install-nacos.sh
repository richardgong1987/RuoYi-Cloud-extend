wget https://github.com/alibaba/nacos/releases/download/1.3.0/nacos-server-1.3.0.zip

unzip nacos-server-1.3.0.zip
rm -fr nacos/conf/application.properties

cp application.properties nacos/conf/

#主要是为了解决数据连接问题
mv application.properties nacos/conf/application.properties application.properties nacos/conf/bootstrap.properties

cd nacos/bin


sh startup.sh -m standalone
