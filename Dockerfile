FROM openjdk:8u191-jre-alpine
MAINTAINER Aishwarya Mittal <mittalaish@gmail.com>
#EXPOSE 8080
#docker run -d -p 8484:8080 f:/se 441/hw7/spring-petclinic-master
#ENTRYPOINT ["java","C:\Program Files\Docker Toolbox\spring-petclinic-2.0.0"]
#ADD spring-petclinic-2.0.0.jar spring-petclinic-2.0.0.jar
#COPY spring-petclinic-2.0.0.jar C:/Program Files/Docker Toolbox/se441
#COPY spring-petclinic-2.0.0.jar /usr/local/tomcat/webapps/se441
COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
#COPY spring-petclinic-2.0.0.jar C:\Program Files\Docker Toolbox\
EXPOSE 8080
#CMD java - jar spring-petclinic-2.0.0.jar
#RUN chmod 777 se441/spring-petclinic-2.0.0.jar
#RUN chmod +x se441/spring-petclinic-2.0.0.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar","--spring.profiles.active=mysql"]
#CMD exec java -jar "/usr/bin/se441/spring-petclinic-2.0.0.jar"
#ENTRYPOINT ["java", "spring-petclinic-2.0.0","-b"]


