FROM node:12

WORKDIR /app

RUN npm install -g nodemon

COPY src/frontend/package*.json ./

RUN npm install

COPY src/frontend /app

EXPOSE 3000
CMD [ "npm", "start" ]