FROM node:20
RUN groupadd -r roboshop && \
    useradd -r -g roboshop -d /opt/server -s /usr/sbin/nologin roboshop
RUN mkdir -p /opt/server && chown -R roboshop:roboshop /opt/server
WORKDIR /opt/server
COPY package.json . 
COPY server.js .
RUN npm install
ENV MONGO="true" \
    REDIS_URL="redis://redis:6379" \
    MONGO_URL="mongodb://mongodb:27017/users"
USER roboshop
CMD [ "node", "server.js" ]

