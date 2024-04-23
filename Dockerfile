FROM node:18.0 as build-stage

RUN apt-get update

WORKDIR /home/app/

COPY . .

RUN npm i

EXPOSE 8083

RUN apt-get install -y dumb-init

CMD ["dumb-init", "npm", "run", "dev"]