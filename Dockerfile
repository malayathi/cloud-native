FROM java:8-jdk-alpine
COPY /target/cloud-native.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'ls'
RUN sh -c 'touch cloud-native.jar'
ENTRYPOINT java -jar -Dserver.port=8080 cloud-native.jar