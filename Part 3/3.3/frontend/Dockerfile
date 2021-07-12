FROM node:14.16.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install -g serve

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build

RUN adduser -S appuser

RUN chown appuser . 

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
