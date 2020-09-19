FROM openjdk:8-jdk-alpine
MAINTAINER mcdeden <mcdeden@gmail.com>
VOLUME /tmp
EXPOSE 8888
ADD target/*.jar Configuration.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/Configuration.jar"]