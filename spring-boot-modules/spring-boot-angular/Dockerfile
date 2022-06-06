#Build Stage
FROM maven:3.6-openjdk-8-slim AS build
#RUN mkdir -p /app/src
RUN mkdir -p /spring-boot-project
#COPY . /app/src
COPY . /spring-boot-project

WORKDIR /spring-boot-project/spring-boot-modules/spring-boot-angular
RUN cd  /spring-boot-project/spring-boot-modules/spring-boot-angular
RUN mvn clean package


#WORKDIR /app
FROM openjdk:8-jre-alpine
COPY --from=build /spring-boot-project/spring-boot-modules/spring-boot-angular/target/spring-boot-angular-1.0.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]