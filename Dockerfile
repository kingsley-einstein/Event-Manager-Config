FROM maven:3.6.0-jdk-11-slim AS mavenBuild
COPY src /app/src
COPY pom.xml /app/pom.xml
RUN mvn -f /app/pom.xml clean package -DskipTests

FROM openjdk:11-jre-slim
COPY --from=mavenBuild /app/target/event-manager-config-0.0.1-snapshot.jar /build/app.jar
ENTRYPOINT ["java", "-jar", "/build/app.jar", "-Dspring.profiles.active=prod", "-DPORT=80"]