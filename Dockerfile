FROM node:10-slim

ENV \
  PORT=8000

WORKDIR /app

COPY package.json package-lock.json index.js /app/

RUN npm ci
RUN apt-get update && apt-get install curl -y

CMD ["node", "index.js"]
