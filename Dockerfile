# Use OpenJDK 8 base image
FROM openjdk:8-jdk-alpine

# Copy WAR file
COPY target/spring-boot-rest-example-0.5.0.war app.war

# Run the WAR
ENTRYPOINT ["java","-jar","/app.war"]

# Expose port
EXPOSE 8080
