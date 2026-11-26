# poc-springboot-app

Hello World Spring Boot application (Java 17, Spring Boot 3.5).

## Maven repository (Nexus)

[.mvn/settings.xml](.mvn/settings.xml) routes all Maven downloads through Nexus `maven-public`.
It reads credentials from the `NEXUS_USERNAME` / `NEXUS_PASSWORD` env vars — set them once:

```powershell
[Environment]::SetEnvironmentVariable("NEXUS_USERNAME", "<user>", "User")
[Environment]::SetEnvironmentVariable("NEXUS_PASSWORD", "<password>", "User")
```

Then pass the settings file to Maven with `-s`:

## Run

```bash
mvn -s .mvn/settings.xml spring-boot:run
```

Then open http://localhost:8080/ — health check at http://localhost:8080/actuator/health

## Build & test

```bash
mvn -s .mvn/settings.xml clean package
java -jar target/poc-springboot-app-0.0.1-SNAPSHOT.jar
```
