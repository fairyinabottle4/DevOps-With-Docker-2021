FROM node:14.16.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \ 
    npm install -g serve && \
    npm run build && \ 
    adduser -S appuser && \ 
    chown appuser . && \
    rm -rf /var/lib/apt/lists/*

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]

