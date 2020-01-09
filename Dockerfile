FROM maven:3.6.0-jdk-11-slim AS mvn
COPY . /app
RUN mvn -f /app/pom.xml clean package -DskipTests

FROM openjdk:11-jre-slim
COPY --from=mvn /app/target/event-manager-config-0.0.1-snapshot.jar /build/app.jar
ENTRYPOINT ["java", "-jar", "/build/app.jar", "-Dspring.profiles.active=prod", "-DPORT=80"]