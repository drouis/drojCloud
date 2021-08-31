# 《火商云链系统》

## spring-cloud-group 服务配置说明

## 有问题反馈

在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流

* [SportPlugs](http://www.sportechplus.com/qieapp/#/login) 运动加科技有限公司
* 邮件: [mail]:(49616026@qq.com)
* 微信: 小兔

## 1) 配置Maven 自建仓库 服务

* 1）上传服务包:

  POM文件加入导入到MAVEN自建仓库的地址，注意展示地址为内部服务地址

```javascript
<distributionManagement>
    <repository>
        <id>yundj-releases</id>
        <name>Releases</name>
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

## 2) Maven远程部署Apache Tomcat服务部署

* 1）Pom文件，在Build时候加入plugin插件，配置上传服务的APACHE 服务地址

```javascript
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.2</version>
    <configuration>
        <url>http://192.168.2.100:9090/manager/text</url>
        <server>tomcat8</server>
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

**_附_**

Docker部署tomcat服务

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

*
    1) docker镜像安装语句

``` dockerfile
docker build -t tomcat:1.0.0 .
```

*
    2) docker容器部署语句

``` dockerfile
docker run --name=tomcat001 -p 9090:9090 -e --restart=always -e TOMCAT_SERVER_ID=tomcat_server_001 -idt tomcat:1.0.0
```
