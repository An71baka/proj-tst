##use the latest Node.js Offi IMG
FROM node:20

##set the working DIR inside my container
WORKDIR /usr/src/app

## copying the jason file wo working DIR
COPY jason.jason ./

## Instaling my Funny app dependencies
RUN npm install

## copying the rest of data
COPY . .

## exposing my app to the world
EXPOSE 3000

## starting the app at last
CMD [ "node", "nodeapp.js" ]
