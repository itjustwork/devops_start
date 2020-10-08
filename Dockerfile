FROM node
RUN mkdir /skillbox
COPY package.json /skillbox
WORKDIR /skillbox
RUN yarn install

COPY ./flatris/ /skillbox

RUN yarn test && yarn build
EXPOSE 3000
CMD yarn start
#RUN npm install && npm next build && npm start