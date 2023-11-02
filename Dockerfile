FROM golang:1.21.3

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY main.go .
COPY go.sum .

RUN go build -o /godocker

EXPOSE 8080

CMD [ "/godocker" ]