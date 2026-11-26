# poc-springboot-app

Hello World Spring Boot application (Java 17, Spring Boot 3.5).

## Run

```bash
mvn spring-boot:run
```

Then open http://localhost:8080/ — health check at http://localhost:8080/actuator/health

## Build & test

```bash
mvn clean package
java -jar target/poc-springboot-app-0.0.1-SNAPSHOT.jar
```
