FROM node:16.3.0-alpine3.13
WORKDIR /var/www
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
ENTRYPOINT ["node", "index.js"]