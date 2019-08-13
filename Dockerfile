FROM openjdk:11.0.4-jdk
WORKDIR /app
COPY . .
RUN apt-get update -y
RUN apt-get install make maven -y
RUN make
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/target/test-project-0.0.4.jar"]
