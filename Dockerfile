FROM node:18 as base

WORKDIR /app


COPY package.json .

EXPOSE 4000

COPY . .

RUN npm install 

CMD ["start"]

ENTRYPOINT [ "npm" , "run" ]

FROM base as development
CMD [ "start:dev" ]

FROM base as production
CMD [ "start:prod" ]

FROM base as testing
CMD [ "start:test" ]

# ARG NODE_ENV

# RUN if [ "$NODE_ENV" = "production" ]; \
#     then npm install --production; \
#     else npm install; \
#     fi
