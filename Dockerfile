ARG NEXUS_HOST=65.0.55.183
FROM ${NEXUS_HOST}:8083/eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]