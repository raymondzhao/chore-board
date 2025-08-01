FROM node:24

WORKDIR /app

COPY package*.json ./

RUN rm -rf node_modules package-lock.json || true
RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]