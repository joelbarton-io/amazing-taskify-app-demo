FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "dist"]

# Use the port specified in your application. If you're using the default React ports:
EXPOSE 3000
