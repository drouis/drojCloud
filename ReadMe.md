《火商云链业务系统》
====
-------
spring-cloud-group 基础服务配置手顺
-------
##有问题反馈
在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流
* [TuutPlugs](http://175.24.116.12/huo/#/login) 小兔电商云科技术有限公司
* 邮件: [mail]:(49616026@qq.com)
* 微信: 小兔
-------
## 企鹅云链应用中间服务部署说明
*  [X] Apache Tomcat应用多集群服务部署 1/1
*  [X] Redis 应用缓存集群部署 1/1
*  [X] Rabbit Mq 消息中间集群服务 1/1
*  [X] Nginx 路由动态分配 1/1
*  [X] Elasticsearch 1/1
*  [X] 应用容器配置【Docker】 1/1
-------
##1) 配置Maven 自建仓库 服务

* 1）上传服务包:

  POM文件加入导入到MAVEN自建仓库的地址，注意展示地址为内部服务地址
```javascript
<distributionManagement>
    <repository>
        <id>yundj-releases</id>
        <name>Releases</name>a
        <url>http://192.168.2.100:8081/repository/maven-releases/</url>
    </repository>
    <snapshotRepository>
        <id>yundj-snapshots</id>
        <name>Snapshot</name>
        <url>http://192.168.2.100:8081/repository/maven-snapshots/</url>
    </snapshotRepository>
</distributionManagement>
```
* 2）引用仓库中的项目包

项目POM文件中加入应用仓库地址
```javascript
<repositories>
    <repository>
        <id>maven-public</id>
        <name>maven-public</name>
        <url>http://192.168.2.100:8081/repository/maven-public/</url>
        <layout>default</layout>
        <releases>
            <enabled>true</enabled>
        </releases>
        <snapshots>
            <enabled>false</enabled>
        </snapshots>
    </repository>
</repositories>
```
-------
##2) Maven远程部署Apache Tomcat服务部署
* 1）Pom文件，在Build时候加入plugin插件，配置上传服务的APACHE 服务地址
  注意<server>tomcat7</server>的名字需要与MAVEN setting中的ID保持一致。


```javascript
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.2</version>
    <configuration>
        <url>http://192.168.2.100:9090/manager/text</url>
        <server>tomcat7</server>
        <path>/ent</path>
        <update>true</update>
    </configuration>
</plugin>
```
Maven 本地路径的setting文件需要针对插件的server进行配置
```xml
<server>
	<id>tomcat7</id>
	<username>root</username>
	<password>1q2w3e4$</password>
</server>
```
* 执行命令：
```cmd
  mvn clean package -U -Dmaven.test.skip=true tomcat7:redeploy
```
-------
**_附_**
#### 注意：192.168.2.100 为内部自建服务起IP，迁移环境需要注意调整服务器IP
# 1 Docker部署tomcat服务
```dockerfile
#基础镜像
FROM tomcat:8.5.68-jdk8
#作者
MAINTAINER tuut <49616026@qq.com>

#定义工作目录
ENV WORK_PATH /usr/local/tomcat/conf
ENV MANAGER_APPS_PATH /usr/local/tomcat/webapps
#定义manager.xml工作目录
ENV MANAGER_PATH /usr/local/tomcat/conf/Catalina/localhost
#定义要替换的文件名
ENV USER_CONF_FILE_NAME tomcat-users.xml
#定义要替换的server.xml文件名
ENV SERVER_CONF_FILE_NAME server.xml
#定义要新增的manager.xml文件名
ENV MANAGER_CONF_FILE_NAME manager.xml
ENV MANAGER_APPS webapps
#删除原文件tomcat-users.xml
RUN rm $WORK_PATH/$USER_CONF_FILE_NAME

#复制文件tomcat-users.xml
COPY  ./$USER_CONF_FILE_NAME $WORK_PATH/
COPY $MANAGER_APPS $MANAGER_APPS_PATH
#删除原文件server.xml
RUN rm $WORK_PATH/$SERVER_CONF_FILE_NAME

#复制文件server.xml
COPY  ./$SERVER_CONF_FILE_NAME $WORK_PATH/

#复制文件manager.xml
COPY  ./$MANAGER_CONF_FILE_NAME $MANAGER_PATH/

```
* 1) docker镜像安装语句
``` dockerfile
docker build -t tomcat:1.0.0 .
```
* 2) docker容器部署语句
``` dockerfile
docker run --name=mytomcat -p 9090:9090 -v /home/material:/data/material -v /data/apache_war/webapps:/usr/local/tomcat/webapps --network host -e --restart=always -e TOMCAT_SERVER_ID=tomcat_server_001 -idt tomcat:1.0.0
```
-------
# 2 Docker部署Redis服务
* 1) Dockerfile
```dockerFile
FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
```
```dockerFile
docker build -t reids:1.0.0 .
```
* 2) * 1) redis.conf
```redis.conf
daemonize yes
pidfile /usr/local/redis/var/redis.pid
port 6379
timeout 300
loglevel debug
logfile /data/redis.log
databases 16
save 900 1
save 300 10
save 60 10000
rdbcompression yes
dbfilename dump.rdb
dir /usr/local/redis/var/
appendonly no
appendfsync always
requirepass 1q2w3e4R
```
* 2) * 2) 下面是redis.conf的主 要配置参数的意义：
```redis.conf
daemonize：是否以后台daemon方式运行
pidfile：pid文件位置
port：监听的端口号
timeout：请求超时时间
loglevel：log信息级别
logfile：log文件位置
databases：开启数据库的数量
save * *：保存快照的频率，第一个*表示多长时间，第三个*表示执行多少次写操作。在一定时间内执行一定数量的写操作时，自动保存快照。可设置多个条件。
rdbcompression：是否使用压缩
dbfilename：数据快照文件名（只是文件名，不包括目录）
dir：数据快照的保存目录（这个是目录）
appendonly：是否开启appendonlylog，开启的话每次写操作会记一条log，这会提高数据抗风险能力，但影响效率。
appendfsync：appendonlylog如何同步到磁盘（三个选项，分别是每次写都强制调用fsync、每秒启用一次fsync、不调用fsync等待系统自己同步）
```
* 3) 启动脚本
```cmd
docker run -itd --name myredis --network=a-network -p 6379:6379 -v /data/redis/redis.conf:/usr/local/etc/redis/redis.conf -v /data/redis/data/:/data -e "TZ=Asia/Shanghai" redis redis-server /usr/local/etc/redis/redis.conf
```
```cmd
docker run -itd --name myredis --network=a-network -p 6379:6379 -v /data/redis:/usr/local/etc/redis --restart=always redis redis-server /usr/local/etc/redis/redis.conf
```
-------
# 3 Docker部署RabbitMQ服务
* 1) Dockerfile
```dockerfile
#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM rabbitmq:3.9

RUN set eux; \
	rabbitmq-plugins enable --offline rabbitmq_management; \
# make sure the metrics collector is re-enabled (disabled in the base image for Prometheus-style metrics by default)
	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; \
# grab "rabbitmqadmin" from inside the "rabbitmq_management-X.Y.Z" plugin folder
# see https://github.com/docker-library/rabbitmq/issues/207
	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; \
	[ -s /usr/local/bin/rabbitmqadmin ]; \
	chmod +x /usr/local/bin/rabbitmqadmin; \
	apt-get update; \
	apt-get install -y --no-install-recommends python3; \
	rm -rf /var/lib/apt/lists/*; \
	rabbitmqadmin --version

EXPOSE 15671 15672
```
* 3) 启动脚本
```cmd
docker run -dit --name myrabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin -p 15672:15672 -p 5672:5672 rabbitmq:management
```
```cmd
docker run -dit --name myrabbitmq -e -TZ=Asia/Shanghai -p 15672:15672 -p 5672:5672 rabbitmq:management
```
默认账户密码： guest/guest

-------
# 4 Docker部署NEXUS服务
* 1) Dockerfile
```dockerfile
#基础镜像
FROM sonatype/nexus3
#作者
MAINTAINER tuut <49616026@qq.com>
VOLUME /home/nexus_home /nexus-data
```
* 2) 启动脚本
```cmd
docker run -dit --name mynexus3 -p 8081:8081 --restart always nexus:1.0.0
```
替换nexus服务镜像 -- 阿里云nexus仓库URL:
```
http://maven.aliyun.com/nexus/content/groups/public
```
-------
# 5 Docker部署 Nacos服务
* 1) Dockerfile
```dockerfile
#基础镜像
FROM nacos/nacos-server
#作者
MAINTAINER tuut <49616026@qq.com>
ENV NACOS_WORK_PATH /home/nacos/
WORKDIR $NACOS_WORK_PATH
VOLUME /data/nacos_home $NACOS_WORK_PATH
```
```cmd
docker build -t nacos:1.0.0 .
```
* 2) 启动脚本
```cmd
docker  run --name nacos -itd -p 8848:8848 --privileged=true --restart=always -e JVM_XMS=256m -e JVM_XMX=256m -e MODE=standalone -e PREFER_HOST_MODE=hostname -v /data/nacos_home/logs:/home/nacos/logs -v /data/nacos_home/init.d/custom.properties:/home/nacos/init.d/custom.properties nacos/nacos-server
```
-------
# 6 Docker部署elasticsearch 7.6.2服务
* 1) 创建挂载的目录
```
mkdir -p /data/esearch_home/config
mkdir -p /data/esearch_home/data
echo "http.host: 0.0.0.0" >> /data/esearch_home/elasticsearch.yml
```
* 2) Dockerfile
```dockerfile
#基础镜像
# FROM elasticsearch:7.6.2
FROM elasticsearch:6.5.4
#作者
MAINTAINER tuut <49616026@qq.com>
ENV WORK_PATH /usr/share/elasticsearch
ENV LOCAL_PATH /data/esearch_home
WORKDIR $WORK_PATH
VOLUME $LOCAL_PATH/data $WORK_PATH/data
VOLUME $LOCAL_PATH/plugins $WORK_PATH/plugins
# VOLUME /home/esearch_home/config/elasticsearch.yml $WORK_PATH/config/elasticsearch.yml
# COPY elasticsearch.yml $WORK_PATH/config/

RUN yum -y install vim
RUN yum -y install net-tools
RUN yum -y install openssh-server
RUN yum -y install wget curl

EXPOSE 9200
EXPOSE 9300
```
```
docker build -t elasticsearch:1.0.0 .
```
* 3) 启动脚本

其中elasticsearch.yml是挂载的配置文件，data是挂载的数据，plugins是es的插件，如ik，而数据挂载需要权限，需要设置data文件的权限为可读可写,需要下边的指令。
chmod -R 777 要修改的路径
```
docker run -p 9200:9200 -p 9300:9300 -v /home/esearch_home/config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml --name elasticsearch -e "discovery.type=single-node" -e ES_JAVA_OPTS="-Xms64m -Xmx128m" -d elasticsearch:1.0.0
```
特别注意：

-e "discovery.type=single-node" 设置为单节点

-e ES_JAVA_OPTS="-Xms256m -Xmx256m" \ 测试环境下，设置ES的初始内存和最大内存，否则导致过大启动不了ES

* 4) 配置KIBANA管理界面

配置KIBANI的管理界面用来图形化elasticsearch的数据集
// docker run --name kibana -e ELASTICSEARCH_URL=http://自己的IP地址:9200 -p 5601:5601 -d kibana:7.6.2
```CMD
docker pull kibana:7.6.2
docker run --name kibana -e ELASTICSEARCH_HOSTS=http://192.168.2.100:9200 -p 5601:5601 -d kibana:7.6.2
```

防火墙添加访问端口 // firewall-cmd --zone=public --add-port=5601/tcp --permanent
重置防火墙// firewall-cmd --reload

进入容器修改相应内容
```CMD
vi /usr/share/kibana/config/kibana.ym
```

server.port: 5601
server.host: 0.0.0.0
elasticsearch.hosts: [ "http://自己的IP地址:9200" ]
i18n.locale: "Zh-CN"

然后访问页面
http://自己的IP地址:5601/app/kibana
-------
# 9 远程maven + tomcat 服务自动部署配置脚本
* 1) 管理控制台执行部署命令
```cmd
mvn clean package -U -Dmaven.test.skip=true tomcat7:redeploy
```
* 2) tomcat文件上传后nginx无法代理读取
     400授权错误,tomcat中bin目录下面，修改catalina.sh 中
```cmd
UMASK="0022"
```
```cmd
mvn clean package -U -Dmaven.test.skip=true -P dev tomcat7:redeploy
```
