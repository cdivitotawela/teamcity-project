FROM node:18-alpine

RUN adduser -D app && \
    mkdir /app && \
    chown app:app /app

WORKDIR /app

COPY package.json .

RUN npm install
COPY . .

USER app

CMD ["node","index.js"]
 