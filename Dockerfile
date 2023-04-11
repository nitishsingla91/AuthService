FROM openjdk:11
VOLUME /tmp
EXPOSE 8083
ARG JAR_FILE=target/AuthService-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]