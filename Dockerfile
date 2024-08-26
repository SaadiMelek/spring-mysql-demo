# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/spring-mysql-demo-1.0.jar /app/spring-mysql-demo.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run spring-mysql-demo.jar when the container launches
CMD ["java", "-jar", "spring-mysql-demo.jar"]