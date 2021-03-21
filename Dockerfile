# Specify a base image
FROM node:alpine

# Install dependencies
WORKDIR /usr/app
COPY ./package.json /usr/app
RUN npm install
COPY ./ /usr/app

# Default command
CMD ["npm", "start"]