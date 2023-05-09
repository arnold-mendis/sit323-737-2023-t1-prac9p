FROM node:16

# Create directory for js
WORKDIR /usr/src/app

# dependencies installation
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8095
CMD [ "node", "server.js" ]