FROM node:lts-alpine3.14

WORKDIR /app
COPY ./.output ./.output
COPY ./package.json ./package.json

EXPOSE 3000
CMD ["npm", "start"]
