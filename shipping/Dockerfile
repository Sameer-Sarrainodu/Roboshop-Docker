FROM maven
RUN groupadd -r roboshop && \
    useradd -r -g roboshop -d /opt/server -s /usr/sbin/nologin roboshop
RUN mkdir -p /opt/server && chown -R roboshop:roboshop /opt/server
WORKDIR /opt/server
COPY pom.xml . 
COPY src /opt/server/src
RUN mvn clean package
RUN mv /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
ENV REDIS_HOST="redis" \
    CART_ENDPOINT="cart:8080" \
    DB_HOST="mysql"
USER roboshop
CMD [ "java", "-jar","shipping.jar" ]