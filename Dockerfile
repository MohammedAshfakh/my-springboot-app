FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/spring-boot-rest-example-0.5.0.war app.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.war"]
