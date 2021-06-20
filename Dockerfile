FROM node:current-alpine

LABEL org.opencontainers.image.title="Users API" \
      org.opencontainers.image.description="Users services API" \
      org.opencontainers.image.authors="Ben Khalfallah Héla"

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install pm2 -g

RUN npm install

ENTRYPOINT ["pm2-runtime", "app.js"]