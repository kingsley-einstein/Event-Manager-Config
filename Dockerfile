FROM maven:3.6.0-jdk-11-slim
FROM openjdk:11-jre-slim
COPY src ./
COPY pom.xml ./
WORKDIR /
RUN mvn clean package -DskipTests
COPY . .
CMD ["java", "-jar", "target/Event-Manager-Config-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=prod", "-DPORT=80"]