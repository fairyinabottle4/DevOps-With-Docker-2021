FROM golang:1.16

WORKDIR /usr/src/app

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost

ENV REDIS_HOST=localhost

COPY . .

RUN go build

RUN go test ./...

EXPOSE 8080

CMD ["./server"]
