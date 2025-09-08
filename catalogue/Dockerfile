FROM node:20-alpine3.21
RUN addgroup -S roboshop && \
    adduser -S -h /opt/server -s /sbin/nologin -G roboshop roboshop

RUN mkdir -p /opt/server && chown -R roboshop:roboshop /opt/server
WORKDIR /opt/server
COPY package.json . 
COPY server.js .
RUN npm install
ENV MONGO="true" \
    MONGO_URL="mongodb://mongodb:27017/catalogue"
USER roboshop
CMD [ "node", "server.js" ]

