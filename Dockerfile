FROM node:10-alpine AS build

MAINTAINER Andrey Groza <andrey_groza@mail.ru>

WORKDIR /usr/src/app

RUN npm install -g bower --production
RUN npm install --global gulp-cli grunt-cli svgo --production  && npm install gulp grunt --production
RUN echo '{ "allow_root": true }' > /root/.bowerrc

FROM node:10-alpine
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/node_modules ./node_modules/

# Expose the port
EXPOSE 9000 35729

RUN mkdir /src
WORKDIR /src

USER node
CMD /bin/bash
