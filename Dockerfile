#Build Stage Start

FROM maven:3.6-jdk-8-slim as builder
WORKDIR /app
COPY . .
RUN mvn clean install

#Run Stage Start

FROM openjdk:8-jdk-alpine
COPY --from=builder /app/target/validator-0.0.1.jar backend-validator-0.0.1.jar
ENTRYPOINT ["java","-jar","/backend-validator-0.0.1.jar"]