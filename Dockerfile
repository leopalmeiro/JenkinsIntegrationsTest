FROM java:8-jdk-alpine

COPY ./target/User-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch User-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","User-0.0.1-SNAPSHOT.jar"]