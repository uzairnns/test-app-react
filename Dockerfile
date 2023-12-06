
FROM node:19
WORKDIR /usr/src/app
COPY package*.json ./
RUN apt-get update \
    && apt-get install -y nodejs \
    && apt-get install -y npm
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
