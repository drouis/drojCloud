《火商云链业务系统》
====
-------
spring-cloud-group CRM基础服务配置手顺
-------
## 有问题反馈

在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流

* [TuutPlugs](http://175.24.116.12/huo/#/login) 小兔电商云科技术有限公司
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
