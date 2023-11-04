FROM node:7-onbuild

WORKDIR /app

COPY package.json .
RUN npm install
COPY . .

EXPOSE 8000

CMD [ "npm" , "start" ]