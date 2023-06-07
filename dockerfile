# FROM node:14.17.5

# WORKDIR /app
# COPY package.json ./
# RUN npm install
# COPY . .
# CMD ["node","app.js"]
# EXPOSE 3005

FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "app.js" ]

