FROM golang:1.16

WORKDIR /myapp

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build

EXPOSE 8000
ENV PORT=8000

ENTRYPOINT ["/myapp/server"]

# Also, in production, I would have used a two-staged build:
#   1. Build using golang image
#   2. Deploy the static executable into a distroless image from Google
#
# Exactly as we did here:
#   https://github.com/valocode/bubbly/blob/9db1c480ca398a155c2b0e1818d356b4542e65a8/Dockerfile
