FROM node:18-alpine

#wkr dir
WORKDIR /app

COPY package.json .
RUN npm install -y

COPY . .

EXPOSE 3000

CMD [ "npm", "start"]