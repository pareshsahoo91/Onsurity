FROM tomcat:8.0-alpine
MAINTAINER "PARESH"
ADD target/PareshWar.war /usr/local/tomcat/webapps/
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
COPY tomcat-users.xml /usr/local/tomcat/conf
CMD ["catalina.sh","run"]
