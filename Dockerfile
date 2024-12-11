# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-17
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and the project files to the container
COPY . .
# Build the application using Maven

RUN mvn package

# Set the command to run the application
CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]


