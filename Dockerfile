#
# Build stage.
#
FROM maven:3.6.3-jdk-11-slim as maven-build

COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package



#
# Package stage.
#
FROM openjdk:11.0.9.1-jre as release

COPY --from=maven-build /home/app/target/eureka-server-0.0.1-SNAPSHOT.jar /apps/eureka-server.jar

EXPOSE 8761
ENTRYPOINT ["java", "-jar", "/apps/eureka-server.jar"]