FROM tenxcloud/tomcat:latest
MAINTAINER faywong "wangfei584521@163.com"
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
RUN mvn clean install
RUN mvn tomcat8:deploy
