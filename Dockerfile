FROM node:latest

LABEL author="David Sanderson"

ENV NODE_ENV=production
ENV PORT=3000

COPY    . /var/www

WORKDIR /var/www


RUN     yarn install

VOLUME [ "/var/www" ]

EXPOSE $PORT

ENTRYPOINT [ "yarn", "start" ]
