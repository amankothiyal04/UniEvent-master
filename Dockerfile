FROM node:15.13-alpine

WORKDIR /app
ENV PATH="./node_modules/.bin:$PATH"
COPY ./ ./

RUN npm install

EXPOSE 5000
CMD [ "npm", "start" ]
