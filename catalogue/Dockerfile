FROM node:20
RUN useradd --system --home /app --shell /sbin/nologin --comment "roboshop system user" roboshop
RUN mkdir -p /opt/server
WORKDIR /opt/server
COPY package.json . 
COPY server.js .
RUN npm install
ENV MONGO="true" \
    MONGO_URL="mongodb://mongodb:27017/catalogue"
USER roboshop
CMD [ "node", "server.js" ]

