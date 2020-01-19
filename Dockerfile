# get a base image
FROM node:alpine

# set your working dir
WORKDIR /usr/app

# install some deps
COPY ./package.json ./
RUN npm install
COPY ./ ./

# set a default command
CMD ["npm", "start"]