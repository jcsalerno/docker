FROM node:20-alpine3.17

RUN mkdir /var/node

WORKDIR /var/node

COPY app.js .

EXPOSE 3000

CMD ["node", "app.js"]