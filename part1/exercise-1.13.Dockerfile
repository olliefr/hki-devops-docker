FROM golang:1.16

WORKDIR /myapp

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build

EXPOSE 8080

ENTRYPOINT ["/myapp/server"]
