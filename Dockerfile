FROM node:lts-bookworm
WORKDIR /app
COPY . /app
RUN npm install
ENTRYPOINT node index.js
