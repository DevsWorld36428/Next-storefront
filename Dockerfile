FROM node:20

WORKDIR /frontend

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8000

CMD ["npm", "start"]
