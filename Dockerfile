FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=/*.jar
COPY ${JAR_FILE} HelloWorld.jar
ENTRYPOINT ["java","-jar","HelloWorld.jar", "--spring.profiles.active=local"]
