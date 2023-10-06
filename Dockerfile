FROM openjdk:17-jdk-slim
MAINTAINER github/hermscoder
ARG JAR_FILE=target/herms-shop-ecommerce-0.0.1-SNAPSHOT.jar
COPY ./${JAR_FILE} /app/app.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080