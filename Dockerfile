FROM node:10-alpine

RUN mkdir -p /home/pavel/js/node_modules && chown -R pavel:pavel /home/pavel/js

WORKDIR /home/pavel/js

COPY package*.json ./

USER pavel

RUN npm install

COPY --chown=pavel:pavel . .

EXPOSE 3000

CMD [ "npm", "start" ]

