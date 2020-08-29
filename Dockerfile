FROM node:12.16.3-alpine

MAINTAINER Niko Roberts <docker@tasboa.com>

RUN apk update && apk add --no-cache git shadow

RUN npm install -g node-sass postcss-cli autoprefixer watch --unsafe-perm

WORKDIR /var/www

RUN chown -R node:node /var/www

CMD [ "watch", "npm" ]
