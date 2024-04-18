# Use a base image with Java installed
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/sb_docker_app.jar /app

# Expose port 8080 (the port your Spring Boot app listens on)
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "sb_docker_app.jar"]

