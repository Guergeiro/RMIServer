FROM openjdk:latest
COPY . /var/www/java
WORKDIR /var/www/java/src
RUN javac *.java
RUN jar cf RMIServer.jar RMIServer.class
CMD ["java", "-jar", "RMIServer.jar"]