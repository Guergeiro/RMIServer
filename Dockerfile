FROM openjdk:latest
COPY . /var/www/java
WORKDIR /var/www/java/src
RUN javac *.java
RUN jar cf RMIServer.jar .
CMD ["java", "-jar", "RMIServer.jar"]
