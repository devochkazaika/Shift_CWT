FROM openjdk:21-jdk-slim
COPY ./target/wallet-0.0.1.jar /opt/service.jar
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://database:5432/wallet
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
EXPOSE 8080
CMD java -jar /opt/service.jar