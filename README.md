The Courses
==============================


Here's the new "Learn Spring" course: <br/>
**[>> LEARN SPRING - THE MASTER CLASS](https://www.baeldung.com/learn-spring-course?utm_source=github&utm_medium=social&utm_content=tutorials&utm_campaign=ls#master-class)**

Here's the Master Class of "REST With Spring" (along with the new announced Boot 2 material): <br/>
**[>> THE REST WITH SPRING - MASTER CLASS](https://www.baeldung.com/rest-with-spring-course?utm_source=github&utm_medium=social&utm_content=tutorials&utm_campaign=rws#master-class)**

And here's the Master Class of "Learn Spring Security": <br/>
**[>> LEARN SPRING SECURITY - MASTER CLASS](https://www.baeldung.com/learn-spring-security-course?utm_source=github&utm_medium=social&utm_content=tutorials&utm_campaign=lss#master-class)**



Java and Spring Tutorials
================

This project is **a collection of small and focused tutorials** - each covering a single and well defined area of development in the Java ecosystem. 
A strong focus of these is, of course, the Spring Framework - Spring, Spring Boot and Spring Security. 
In addition to Spring, the modules here cover a number of aspects of Java. 

Profile based segregation
====================

We are using maven build profiles to segregate the huge list of individual projects we have in our repository.

As for now, vast majority of the modules require JDK8 to build and run correctly.

The projects are broadly divided into 3 lists: first, second and heavy. 

Next, they are segregated further on the basis of the tests that we want to execute.

Additionally, there are 2 profiles dedicated for JDK9 and above builds.

Therefore, we have a total of 8 profiles:

| Profile                    | Includes                    | Type of test enabled |
| -------------------------- | --------------------------- | -------------------- |
| default-first              | First set of projects       | *UnitTest            |
| integration-lite-first     | First set of projects       | *IntegrationTest     |
| default-second             | Second set of projects      | *UnitTest            |
| integration-lite-second    | Second set of projects      | *IntegrationTest     |
| default-heavy              | Heavy/long running projects | *UnitTest            |
| integration-heavy          | Heavy/long running projects | *IntegrationTest     |
| default-jdk9-and-above     | JDK9 and above projects     | *UnitTest            |
| integration-jdk9-and-above | JDK9 and above projects     | *IntegrationTest     |

Building the project
====================

Though it should not be needed often to build the entire repository at once because we are usually concerned with a specific module.

But if we want to, we can invoke the below command from the root of the repository if we want to build the entire repository with only Unit Tests enabled:

`mvn clean install -Pdefault-first,default-second,default-heavy`

or if we want to build the entire repository with Integration Tests enabled, we can do:

`mvn clean install -Pintegration-lite-first,integration-lite-second,integration-heavy`

Analogously, for the JDK9 and above projects the commands are:

`mvn clean install -Pdefault-jdk9-and-above`

and

`mvn clean install -Pintegration-jdk9-and-above`

Building a single module
====================
To build a specific module, run the command: `mvn clean install` in the module directory.


Running a Spring Boot module
====================
To run a Spring Boot module, run the command: `mvn spring-boot:run` in the module directory.


Working with the IDE
====================
This repo contains a large number of modules. 
When you're working with an individual module, there's no need to import all of them (or build all of them) - you can simply import that particular module in either Eclipse or IntelliJ. 


Running Tests
=============
The command `mvn clean install` from within a module will run the unit tests in that module.
For Spring modules this will also run the `SpringContextTest` if present.

To run the integration tests, use the command:

`mvn clean install -Pintegration-lite-first` or 

`mvn clean install -Pintegration-lite-second` or 

`mvn clean install -Pintegration-heavy` or

`mvn clean install -Pintegration-jdk9-and-above`

depending on the list where our module exists


################

$ docker build -t angular-app .
[+] Building 232.9s (14/14) FINISHED
 => [internal] load build definition from Dockerfile                                                 0.4s 
 => => transferring dockerfile: 32B                                                                  0.1s 
 => [internal] load .dockerignore                                                                    0.2s 
 => => transferring context: 2B                                                                      0.0s 
 => [internal] load metadata for docker.io/library/node:14.7.0-alpine3.12                            1.8s 
 => [auth] library/node:pull token for registry-1.docker.io                                          0.0s 
 => [1/8] FROM docker.io/library/node:14.7.0-alpine3.12@sha256:fb3a745115b4bb43e4fa63cc5a1d78a9f799  0.0s 
 => [internal] load build context                                                                   14.7s 
 => => transferring context: 2.18MB                                                                 14.1s 
 => CACHED [2/8] RUN mkdir -p /app                                                                   0.0s 
 => CACHED [3/8] WORKDIR /app                                                                        0.0s 
 => CACHED [4/8] COPY package*.json /app/                                                            0.0s 
 => [5/8] RUN npm install                                                                           69.5s 
 => [6/8] RUN npm install -g @angular/cli@1.7.4                                                    106.1s 
 => [7/8] COPY ./ /app/                                                                             30.6s 
 => [8/8] RUN npm build --prod                                                                       1.3s 
 => exporting to image                                                                               8.1s 
 => => exporting layers                                                                              8.0s 
 => => writing image sha256:6cbe74900cef7e468255a614995665213188caea8273819a17ab3816222e6b99         0.0s 
 => => naming to docker.io/library/angular-app                                                       0.0s 

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them 

Babatunde@DESKTOP-IEQG8EN MINGW64 ~/Desktop/spring-boot-projects/spring-boot-modules/spring-boot-angular/src/main/js/application (master)
$ docker images
REPOSITORY                                 TAG       IMAGE ID       CREATED         SIZE
angular-app                                latest    6cbe74900cef   2 minutes ago   875MB
ghcr.io/conradludgate/spotify-auth-proxy   latest    1a52fb79bae0   9 months ago    12.9MB

##################
$ docker run -p 4200:4200 --name angular-container angular-app

> sampleapp@0.0.0 start /app
> ng serve --host 0.0.0     

** NG Live Development Server is listening on 0.0.0:4200, open your browser on http://0.0.0:4200/ **
Date: 2022-06-05T18:19:39.705Z
Hash: 88c92c6560130a57ee12
Time: 7784ms
chunk {inline} inline.bundle.js (inline) 3.85 kB [entry] [rendered]
chunk {main} main.bundle.js (main) 43.2 kB [initial] [rendered]
chunk {polyfills} polyfills.bundle.js (polyfills) 596 kB [initial] [rendered]
chunk {styles} styles.bundle.js (styles) 41.6 kB [initial] [rendered]
chunk {vendor} vendor.bundle.js (vendor) 9.55 MB [initial] [rendered]

webpack: Compiled successfully.
