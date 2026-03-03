FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Bundle app source
COPY . /usr/src/app

# Build app from TypeScript
RUN yarn build

CMD [ "yarn", "start" ]
