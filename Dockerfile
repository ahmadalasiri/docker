FROM node:18

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

ARG NODE_ENV

RUN if [ "$NODE_ENV" = "production" ]; \
    then npm install --production; \
    else npm install; \
    fi

# Bundle app source
COPY . .

EXPOSE 4000

ENTRYPOINT [ "npm" , "run" ]

CMD [ "start:watch" ]