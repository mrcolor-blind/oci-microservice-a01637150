FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01637150
COPY /target/*.jar oci-microservice-a01637150.jar
COPY /src/main/resources/Wallet_javadev101 /oci-microservice-a01637150/Wallet_javadev101
ENV TNS_ADMIN=/oci-microservice-a01637150/Wallet_javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01637150.jar" ]