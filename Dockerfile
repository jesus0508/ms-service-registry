FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/ms-service-registry-*-SNAPSHOT.jar
COPY ${JAR_FILE} ms-service-registry.jar
RUN addgroup -S bootcampgroup && adduser -S bootcampuser -G bootcampgroup
RUN mkdir -p /opt/logs/ms-service-registry
RUN chown -R bootcampuser:bootcampgroup /opt/logs/ms-service-registry
USER bootcampuser:bootcampgroup
ENTRYPOINT ["java", "-jar", "/ms-service-registry.jar"]