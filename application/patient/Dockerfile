FROM node:18-alpine

#wkr dir
WORKDIR /app

COPY application/patient/package.json .
RUN npm install -y

COPY application/patient/ .

EXPOSE 3000

CMD [ "npm", "start"]