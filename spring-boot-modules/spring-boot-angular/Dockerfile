#Build Stage
FROM maven:3.6-openjdk-8-slim AS build
RUN mkdir -p /app/src
#COPY . /app/src
COPY ../../../../ /app

WORKDIR /app
#COPY src /app/src

#COPY pom.xml /app/
#RUN mvn clean install
RUN mvn clean package
#RUN mvn spring-boot:run


#VOLUME /files
#WORKDIR /app
#COPY --from=build /app/src/target/spring-boot-angular-1.0.jar /app/app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]