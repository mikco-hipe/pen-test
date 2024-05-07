FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3030

CMD ["sh", "-c", "PORT=3030 npm start"]
