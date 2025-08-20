FROM amazoncorretto:21-alpine-jdk
COPY target/simple-web-app-aws.jar simple-web-app-aws.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","simple-web-app-aws.jar"]