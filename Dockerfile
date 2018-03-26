FROM sippe/sippe-microservice-image-base
ADD maven/sippe-jenkins-poc.jar /opt/microservices/sippe-jenkins-poc.jar
ENTRYPOINT ["java", "-Duser.timezone=America/Sao_Paulo", "-Duser.country=br", "-Duser.language=pt" ,"-Djava.security.egd=file:/dev/./urandom", "-Xmx1024m", "-jar", "sippe-jenkins-poc.jar"]
