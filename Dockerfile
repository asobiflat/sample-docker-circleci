FROM node:7.8.0

ARG NODE_ENV=TODO

# WORKDIR /usr/src/app

# COPY package.json /usr/src/app/
ADD ./package.json /
RUN npm install && npm cache clean

# COPY . /usr/src/app/
ADD . /

# EXPOSE 8080

# CMD [ "npm", "start" ]
# CMD [ "PORT=$PORT", "npm", "start" ]
CMD PORT=$PORT npm start
