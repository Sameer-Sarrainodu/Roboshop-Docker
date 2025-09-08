# optimized method
FROM maven:3.9.2-eclipse-temurin-17 AS builder
WORKDIR /opt/server
COPY pom.xml . 
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/server

RUN addgroup -S roboshop && \
    adduser -S -D -H -h /opt/server -s /sbin/nologin -G roboshop roboshop

ENV CART_ENDPOINT=cart:8080 \
    DB_HOST=mysql

COPY --from=builder /opt/server/target/shipping-*.jar /opt/server/shipping.jar

USER roboshop

CMD ["java","-jar","shipping.jar"]







# basic method
# FROM maven
# RUN groupadd -r roboshop && \
#     useradd -r -g roboshop -d /opt/server -s /usr/sbin/nologin roboshop
# WORKDIR /opt/server
# COPY pom.xml . 
# COPY src /opt/server/src
# RUN mvn clean package
# RUN mv /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
# ENV REDIS_HOST="redis" \
#     CART_ENDPOINT="cart:8080" \
#     DB_HOST="mysql"
# USER roboshop
# CMD [ "java", "-jar","shipping.jar" ]