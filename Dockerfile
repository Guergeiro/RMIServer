FROM openjdk:latest
COPY . /var/www/java
WORKDIR /var/www/java/src
RUN javac *.java
RUN echo Main-Class: RMIServer > MANIFEST.MF
RUN jar cfv RMIServer.jar MANIFEST.MF .
CMD ["java", "-jar", "RMIServer.jar"]
