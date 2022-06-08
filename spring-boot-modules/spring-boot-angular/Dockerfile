#Build Stage
FROM maven:3.6-openjdk-8-slim AS build
RUN mkdir -p /spring-boot-project 
COPY . /spring-boot-project

WORKDIR /spring-boot-project/spring-boot-modules/spring-boot-angular
RUN cd  /spring-boot-project/spring-boot-modules/spring-boot-angular
RUN mvn clean package

# Run Stage
FROM openjdk:8-jre-alpine
COPY --from=build /spring-boot-project/spring-boot-modules/spring-boot-angular/target/spring-boot-angular-1.0.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]