FROM sippe/sippe-microservice-image-base
ADD maven/jenkinsTest.jar /opt/microservices/jenkinsTest.jar
ENTRYPOINT ["java", "-Duser.timezone=America/Sao_Paulo", "-Duser.country=br", "-Duser.language=pt" ,"-Djava.security.egd=file:/dev/./urandom", "-Xmx1024m", "-jar", "jenkinsTest.jar"]
