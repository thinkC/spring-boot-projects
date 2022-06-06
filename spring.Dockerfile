#Build Stage
FROM maven:3.6-openjdk-8-slim AS build
RUN mkdir -p /app/src
COPY . /app/src
WORKDIR /app/src
RUN mvn clean package

# Run Stage
FROM openjdk:8-jre-alpine
COPY --from=build /app/src/spring-boot-modules/spring-boot-angular/target/spring-boot-angular-1.0.jar /app/app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]
ENTRYPOINT ["java", "-jar", "/app/app.jar"]