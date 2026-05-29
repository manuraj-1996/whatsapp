# Use a minimal Java image
FROM eclipse-temurin:17-jdk

# Create a directory in the container for the application
WORKDIR /app

# Copy your already-built JAR into the container
COPY target/ecommerce-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/app.war

# Expose port 8080 (if your app listens on 8080)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
