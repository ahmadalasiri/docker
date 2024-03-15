FROM node:18

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

# RUN npm install -g nodemon

RUN npm install

# Bundle app source
COPY . .

EXPOSE 4000

ENTRYPOINT [ "npm" , "run" ]

CMD [ "start" ]