# Use a Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy pom and src
COPY pom.xml .
COPY src ./src

# Build with Maven inside container
RUN ./mvnw clean package -DskipTests || mvn clean package -DskipTests

# Copy built jar
COPY target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run app
ENTRYPOINT ["java","-jar","app.jar"]
