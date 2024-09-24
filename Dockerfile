# Use a specific version of Amazon Corretto as the base image
FROM amazoncorretto:11-al2023-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY target/maven-standalone-application*.jar maven-standalone-application.jar 

# Specify the command to run the JAR file
CMD ["java", "-jar", "maven-standalone-application.jar"]

