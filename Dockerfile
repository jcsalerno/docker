FROM node:20-alpine3.17

LABEL maintainer="julio"

VOLUME [ "/var/nodeapp" ]

RUN adduser -h /var/nodeapp -s /bin/bash -D nodeapp

WORKDIR /var/nodeapp

COPY app.js .
RUN chown nodeapp:nodeapp app.js

EXPOSE 3000

ARG VERSION
ENV VERSION=${VERSION:-1.0.0}

USER nodeapp
CMD ["node", "app.js"]