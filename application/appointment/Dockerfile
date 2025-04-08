FROM node:18-alpine

WORKDIR /app

COPY application/appointment/package.json ./
RUN npm install

COPY application/appointment/ .

EXPOSE 3000

CMD ["npm", "start"]
