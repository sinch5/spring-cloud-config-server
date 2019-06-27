FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ARG JAR_FILE
ADD /target/spring-cloud-config-server-0.0.1-SNAPSHOT.jar spring-cloud-config-server-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-cloud-config-server-0.0.1-SNAPSHOT.jar"]