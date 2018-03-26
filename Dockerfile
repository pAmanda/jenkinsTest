FROM scratch
ADD maven microservices/
ENTRYPOINT ["java", "-Duser.timezone=America/Sao_Paulo", "-Duser.country=br", "-Duser.language=pt" ,"-Djava.security.egd=file:/dev/./urandom", "-Xmx1024m", "-jar", "sippe-jenkins-poc.jar"]

FROM openjdk:8-jre-alpine
RUN mkdir -p /opt/microservice
ADD maven/sippe-jenkins-poc.jar /opt/microservice/sippe-jenkins-poc.jar
WORKDIR /opt/microservice
EXPOSE 8080
ENTRYPOINT ["java", "-Duser.timezone=America/Sao_Paulo", "-Djava.security.egd=file:/dev/./urandom", "-Xmx1024m", "-jar", "sippe-jenkins-poc.jar"]
