
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM tomcat:10.1-jdk17-temurin

RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/' /usr/local/tomcat/conf/server.xml \
    && sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml \
    && rm -rf /usr/local/tomcat/webapps/*

COPY --from=build /app/target/hireflow.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 10000

CMD ["catalina.sh", "run"]
