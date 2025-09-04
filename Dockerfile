# Use an official OpenJDK runtime as base image
FROM eclipse-temurin:17-jdk-alpine AS build

# Set working directory inside container
WORKDIR /app

# Copy Maven wrapper and pom.xml first (for dependency caching)
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Give permission to mvnw
RUN chmod +x mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy project source
COPY src src

# Package the application (skip tests to speed up build)
RUN ./mvnw clean package -DskipTests

# ------------------------------
# Run stage
# ------------------------------
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the built JAR from the previous stage
COPY --from=build /app/target/*.jar app.jar

# Expose port (Render will override, but good to document)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar","--server.port=$PORT"]
