wget https://github.com/alibaba/nacos/releases/download/1.3.0/nacos-server-1.3.0.zip

unzip nacos-server-1.3.0.zip
rm -fr nacos/conf/application.properties

cp application.properties nacos/conf/
cd nacos/bin


sh startup.sh -m standalone
