FROM node:10-alpine

MAINTAINER Andrey Groza <andrey_groza@mail.ru>

RUN npm install -g bower
RUN npm install --global gulp-cli grunt-cli && npm install gulp grunt
RUN echo '{ "allow_root": true }' > /root/.bowerrc

# Expose the port
EXPOSE 9000 35729

RUN mkdir /src
WORKDIR /src

USER node
CMD /bin/bash
