# Stage 1: Build the application using Maven
FROM eclipse-temurin:17-jdk-jammy AS builder
WORKDIR /app

# Copy the Maven wrapper and pom.xml to cache dependencies
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# --- FIX ADDED HERE ---
# Make the Maven wrapper executable before running it
RUN chmod +x ./mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy the rest of the source code and build the application
COPY src ./src
RUN ./mvnw package -DskipTests

# Stage 2: Create a minimal final image with only the JRE and the application JAR
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy the built JAR from the 'builder' stage
COPY --from=builder /app/target/app-0.0.1-SNAPSHOT.jar ./application.jar

# The command to run the application
# Render will set the PORT environment variable automatically
CMD ["java", "-jar", "application.jar"]
